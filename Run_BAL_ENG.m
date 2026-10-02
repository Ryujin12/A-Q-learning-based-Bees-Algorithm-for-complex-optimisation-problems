function [it, OptCost, NFE, OptSolutions] = Run_BAL_ENG(F, n,m,e,nep,nsp,ngh, MaxEval, Shrink,stlim)
[lb,ub,dim,fobj] = Get_Functions_details(F);
Dims = dim;
ObjFunction = fobj; % Objective Function
VarSize = [1 Dims]; % Decision Variables Matrix Size
VarMin = lb; % Decision Variables Lower Bound
VarMax = ub; % Decision Variables Upper Bound
range = VarMax-VarMin;

ColonySize = e*nep+(m-e)*nsp+(n-m);        
% MaxIt = round(MaxEval/ColonySize);  
MaxIt = 10000;
Results=[];

Positions=zeros(n,Dims);
%% Initialization
Unknown_Patch.Position = [];
Unknown_Patch.Cost = [];
Unknown_Patch.Size = [];
Unknown_Patch.Stagnated = [];
Unknown_Patch.counter = [];
Scout = repmat(Unknown_Patch,n,1);
counter = 0;

% Q_TABLE
Q_t = (1/Dims)*ones(1,Dims);
Total_Imp = zeros(1,e);
Q_t_dir = (0.5)*ones(Dims,2);
Q_t_ngh = (ngh)*ones(Dims,1);
% Generate Initial Solutions
for i = 1:n
    Scout(i).Position = unifrnd(VarMin,VarMax,VarSize);
    Scout(i).Cost = ObjFunction(Scout(i).Position);
    Scout(i).Size = range;
    Scout(i).Stagnated = 0;
    counter = counter+1;
    Scout(i).counter = counter;
end
%size = linspace(0,1,n);

%% Sites Selection 
[~, RankOrder] = sort([Scout.Cost]);
Patch = Scout(RankOrder);
BestSol.Cost = inf;

%% Bees Algorithm Local and Global Search
for it = 1:MaxIt
    if counter >= MaxEval
        break;
    end
    % Lokal Search elite
    for i = 1:e
        bestWorker.Cost = inf;
        % Total_Imp = zeros(1,e);

        for j = 1:nep
            [Worker.Position, k, a] = Foraging_L_ver2_TCSD (Q_t,Patch(i).Position,Q_t_ngh,VarMax,VarMin,Patch(i).Size,Q_t_dir);
            Worker.Cost = ObjFunction(Worker.Position);
            Worker.Size = Patch(i).Size;
            Worker.Stagnated = Patch(i).Stagnated;
            Total_Imp(i)=Total_Imp(i)+Worker.Cost;
            counter = counter+1;
            Worker.counter = counter;
            alpha = Worker.Cost/Total_Imp(i);
            if Worker.Cost < bestWorker.Cost
                % [Q_t,Q_t_ngh]=Reward(Q_t,alpha,k,Q_t_ngh);
                % Q_t_dir=Reward_Dir(Q_t_dir,alpha,k,a);
                bestWorker = Worker;
            % else
            %     [Q_t,Q_t_ngh]=Penalty(Q_t,alpha,k,Q_t_ngh);
            %     Q_t_dir=Penalty_Dir(Q_t_dir,alpha,k,a);
            end
        end
        if bestWorker.Cost < Patch(i).Cost
            [Q_t,Q_t_ngh]=Reward(Q_t,alpha,k,Q_t_ngh);
            %if a==1
            Q_t_dir=Reward_Dir(Q_t_dir,alpha,k,a);
            %else
            %Q_t_dir=Reward_Dir(Q_t_dir,alpha,k,a)
        %end
            Patch(i) = bestWorker;
            Patch(i).Stagnated = 0;

        else
            [Q_t,Q_t_ngh]=Penalty(Q_t,alpha,k,Q_t_ngh);
            %if a==1

            Q_t_dir=Penalty_Dir(Q_t_dir,alpha,k,a);
            %else
            %Q_t_dir=Penalty_Dir(Q_t_dir,alpha,k,a)
        %end
            Patch(i).Stagnated = Patch(i).Stagnated+1;
            Patch(i).Size = Patch(i).Size*Shrink;

        end
        if(Patch(i).Stagnated > stlim)
            Patch(i) = Patch(end);
            Patch(i).Size = range;
            Patch(i).Stagnated = 0;
        end
    end
    % Lokal Search selected non-elite
    for i = e+1:m
        bestWorker.Cost = inf;
        for j = 1:nsp
            [Worker.Position,k,a] = Foraging_L_ver2_TCSD (Q_t,Patch(i).Position,Q_t_ngh,VarMax,VarMin,Patch(i).Size,Q_t_dir);
            Worker.Cost = ObjFunction(Worker.Position);
            Worker.Size = Patch(i).Size;
            Worker.Stagnated = Patch(i).Stagnated;
            counter = counter+1;
            Worker.counter = counter;
            if Worker.Cost < bestWorker.Cost
                bestWorker = Worker;
            end
        end
        if bestWorker.Cost < Patch(i).Cost
            [Q_t,Q_t_ngh]=Reward(Q_t,alpha,k,Q_t_ngh);
            Q_t_dir=Reward_Dir(Q_t_dir,alpha,k,a);
            Patch(i) = bestWorker;
            Patch(i).Stagnated = 0;
        else
            [Q_t,Q_t_ngh]=Penalty(Q_t,alpha,k,Q_t_ngh);
            Q_t_dir=Penalty_Dir(Q_t_dir,alpha,k,a);
            Patch(i).Stagnated = Patch(i).Stagnated+1;
            Patch(i).Size = Patch(i).Size*Shrink;
        end
        if(Patch(i).Stagnated > stlim)
            Patch(i) = Patch(end);
            Patch(i).Size = range;
            Patch(i).Stagnated = 0;
        end
    end
    % Global Search non-selected
    for i = m+1:n
        Patch(i).Position = unifrnd(VarMin,VarMax,VarSize);
        Patch(i).Cost = ObjFunction(Patch(i).Position);
        Patch(i).Size = range;
        Patch(i).Stagnated = 0;
        counter = counter+1;
        Patch(i).counter = counter;
    end
    
    % SORTING
    [~, RankOrder] = sort([Patch.Cost]);
    Patch = Patch(RankOrder);

    % Update Best Solution Ever Found
    OptSol = Patch(1);
    if OptSol.Cost < BestSol.Cost
        BestSol = OptSol;
    end
    
    % taking of result
    OptCost(it) = BestSol.Cost;
    OptSolutions = BestSol;
    Counter(it) = counter;
    Time(it) = toc;
    NFE = counter;
    
    % Display Iteration Information
    % disp(['Iteration ' num2str(it) ': Best Cost = ' num2str(OptCost(it)) ' --> Time = ' num2str(Time(it)) ' seconds' '; Fittness Evaluations = ' num2str(Counter(it)) '; Sample = ' num2str(sample)]);
    % if(abs(Instance.optima-BestSol.Cost) <= accuracy) 
    %     break;
    % end
end

%% Results
% figure;
% semilogy(OptCost,'LineWidth',2);
% xlabel('Iteration');
% ylabel('Best Cost');
% Results(sample)=BestSol.Cost;
% Positions(sample,:)=BestSol.Position;
% Pos(sample) = BestSol.Position;



end