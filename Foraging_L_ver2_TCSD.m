function [y, k, a] = Foraging_L_ver2_TCSD (Q_table,patchPosition,nghk,upper,lower,size,Q_table_direction)
    asd=NaN;
    dn=numel(upper);
    nVar = numel (patchPosition);
    m= 1:1:nVar;
    if max(Q_table)<0
    Q_table=(1/Dims)*ones(1,Dims);
    end
    if Q_table==asd
    Q_table=(1/Dims)*ones(1,Dims);
    end
    % k = randi([1 nVar]);
    k = randsample(m,1,true,Q_table);   
    y = patchPosition;
    % b = patchPosition;
    r = nghk(k) * size;

    % r = nghk(k) * size(k);
    % if numel(size)>1
    %     a = randsample([1,2],1,true,Q_table_direction(k,:));
    %     y(k) = y(k)+ r(k)*((-1)^a);
    %     y(y>upper(k)) = upper(k);
    %     y(y<lower(k)) = lower(k);
    % else
    %     a = randsample([1,2],1,true,Q_table_direction(k,:));
    %     y(k) = y(k)+ r((-1)^a);
    %     y(y>upper) = upper;
    %     y(y<lower) = lower;
    % 
    % end

    a = randsample([1,2],1,true,Q_table_direction(k,:));
    % %returning a
    % %if a is 1, searching direction is goind to negative, else positive.
    y(k) = y(k)+ r*((-1)^a);
    % y(k) = y(k)+ r(k)*((-1)^a);
    % 
    % %y(k) = y(k)+ r*((-1)^randi(2));
    % 
    % y(y>upper) = upper;
    % y(y<lower) = lower;
    % y(k)(y(k)>upper(k)) = upper(k);
    % y(k)(y(k)<lower(k)) = lower(k);
    % if y(1)>upper(1)
    %     y(1)=upper(1);
    % end
    % if y(2)>upper(2)
    %     y(2)=upper(2);
    % end
    % if y(3)>upper(3)
    %     y(3)=upper(3);
    % end
    % if y(1)<lower(1)
    %     y(1)=lower(1);
    % end
    % if y(2)<lower(2)
    %     y(2)=lower(2);
    % end
    % if y(3)<lower(3)
    %     y(3)=lower(3);
    % end
    for i = 1:dn
        if y(i)>upper(i)
        y(i)=upper(i);
        end
        if y(i)<lower(i)
        y(i)=lower(i);
        end
      

    end
 
   
    
end

