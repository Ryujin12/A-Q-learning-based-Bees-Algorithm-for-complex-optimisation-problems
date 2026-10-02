function [Q_table,Q_table_ngh] = Reward(Q_table,alpha,x,Q_table_ngh)

nrqt=numel(Q_table);
nrqtngh = numel(Q_table_ngh);

rewnew1 = Q_table(x) + alpha*(1-Q_table(x));
rewother = Q_table(x) * (1-alpha);

for i=1:nrqt

    if x==i
        Q_table(i)=Q_table(i)+rewnew1;
    else
        Q_table(i)=Q_table(i)+rewother;
    end
end

Q_table=Q_table/sum(Q_table);
Q_table=abs(Q_table);
rewnew1_ngh = 0.001;
Q_table_ngh(x)=Q_table_ngh(x)+alpha*Q_table_ngh(x);
% Q_table_ngh(x)=Q_table_ngh(x)+Q_table_ngh(x)*0.75;
% Q_table_ngh(x)=(1/alpha)*Q_table_ngh(x);

end

