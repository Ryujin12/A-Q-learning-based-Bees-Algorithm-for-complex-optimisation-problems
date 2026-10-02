function Q_table_direction = Penalty_Dir(Q_table_direction,alpha,x,a)


nrqtdr = numel(Q_table_direction);
rewnew1_direction = Q_table_direction(x) * (1-alpha);
rewother_direction = (alpha/(nrqtdr-1)) + Q_table_direction(x) * (1-alpha);
for i=1:nrqtdr
   if x==i
       if a==1
           Q_table_direction(i,a)=Q_table_direction(i,a)+rewnew1_direction;
           Q_table_direction(i,a+1)=Q_table_direction(i,a+1)+rewother_direction;
       else
           Q_table_direction(i,a)=Q_table_direction(i,a)+rewnew1_direction;
           Q_table_direction(i,a-1)=Q_table_direction(i,a-1)+rewother_direction;
       end
       Q_table_direction(i,:)=  Q_table_direction(i,:)/sum(Q_table_direction(i,:));
   end
end

Q_table_direction=abs(Q_table_direction);

end