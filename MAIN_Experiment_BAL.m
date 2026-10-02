clc
clear

IndependentRuns = 30;
Function = 'F1'; 

%n = 8; m = 4; e = 2; nep = 6; nsp = 2; ngh = 0.015; %pop20
% n = 9; m = 5; e = 4; nep = 6; nsp = 2; ngh = 0.015;%pop30
% n = 7; m = 3; e = 2; nep = 18; nsp = 10; ngh = 0.1; %50
n = 14; m = 6; e = 2; nep = 30; nsp = 8; ngh = 0.01; %pop100

Shrink=0.95;
stlim = 10;
MaximumNFE = 500000;

for tour=1:IndependentRuns
[Result_BAL_ENG(tour).it , Result_BAL_ENG(tour).OptCost, Result_BAL_ENG(tour).NFE, Result_BAL_ENG(tour).OptSols] = Run_BAL_ENG(Function, n,m,e,nep,nsp,ngh, MaximumNFE,Shrink,stlim);

Result_BAL_ENG(tour).BestCost = Result_BAL_ENG(tour).OptCost(end);
BestSol = Result_BAL_ENG(tour).OptSols(end);
Result_BAL_ENG(tour).BestPos = BestSol(end).Position;

end

save BAL_F1_10_PopSize_100_MaxEval_500000-0.01_.mat Result_BAL_ENG





clc
clear

IndependentRuns = 30;
Function = 'F2'; 

%n = 8; m = 4; e = 2; nep = 6; nsp = 2; ngh = 0.015; %pop20
% n = 9; m = 5; e = 4; nep = 6; nsp = 2; ngh = 0.015;%pop30
% n = 7; m = 3; e = 2; nep = 18; nsp = 10; ngh = 0.1; %50
n = 14; m = 6; e = 2; nep = 30; nsp = 8; ngh = 0.01; %pop100

Shrink=0.95;
stlim = 10;
MaximumNFE = 500000;

for tour=1:IndependentRuns
[Result_BAL_ENG(tour).it , Result_BAL_ENG(tour).OptCost, Result_BAL_ENG(tour).NFE, Result_BAL_ENG(tour).OptSols] = Run_BAL_ENG(Function, n,m,e,nep,nsp,ngh, MaximumNFE,Shrink,stlim);

Result_BAL_ENG(tour).BestCost = Result_BAL_ENG(tour).OptCost(end);
BestSol = Result_BAL_ENG(tour).OptSols(end);
Result_BAL_ENG(tour).BestPos = BestSol(end).Position;

end

save BAL_F2_PopSize_100_MaxEval_500000-0.01_.mat Result_BAL_ENG




clc
clear

IndependentRuns = 30;
Function = 'F3'; 

%n = 8; m = 4; e = 2; nep = 6; nsp = 2; ngh = 0.015; %pop20
% n = 9; m = 5; e = 4; nep = 6; nsp = 2; ngh = 0.015;%pop30
% n = 7; m = 3; e = 2; nep = 18; nsp = 10; ngh = 0.1; %50
n = 14; m = 6; e = 2; nep = 30; nsp = 8; ngh = 0.01; %pop100

Shrink=0.95;
stlim = 10;
MaximumNFE = 500000;

for tour=1:IndependentRuns
[Result_BAL_ENG(tour).it , Result_BAL_ENG(tour).OptCost, Result_BAL_ENG(tour).NFE, Result_BAL_ENG(tour).OptSols] = Run_BAL_ENG(Function, n,m,e,nep,nsp,ngh, MaximumNFE,Shrink,stlim);

Result_BAL_ENG(tour).BestCost = Result_BAL_ENG(tour).OptCost(end);
BestSol = Result_BAL_ENG(tour).OptSols(end);
Result_BAL_ENG(tour).BestPos = BestSol(end).Position;

end

save BAL_F3_PopSize_100_MaxEval_500000-0.01_.mat Result_BAL_ENG



clc
clear

IndependentRuns = 30;
Function = 'F4'; 

%n = 8; m = 4; e = 2; nep = 6; nsp = 2; ngh = 0.015; %pop20
% n = 9; m = 5; e = 4; nep = 6; nsp = 2; ngh = 0.015;%pop30
% n = 7; m = 3; e = 2; nep = 18; nsp = 10; ngh = 0.1; %50
n = 14; m = 6; e = 2; nep = 30; nsp = 8; ngh = 0.01; %pop100

Shrink=0.95;
stlim = 10;
MaximumNFE = 500000;

for tour=1:IndependentRuns
[Result_BAL_ENG(tour).it , Result_BAL_ENG(tour).OptCost, Result_BAL_ENG(tour).NFE, Result_BAL_ENG(tour).OptSols] = Run_BAL_ENG(Function, n,m,e,nep,nsp,ngh, MaximumNFE,Shrink,stlim);

Result_BAL_ENG(tour).BestCost = Result_BAL_ENG(tour).OptCost(end);
BestSol = Result_BAL_ENG(tour).OptSols(end);
Result_BAL_ENG(tour).BestPos = BestSol(end).Position;

end

save BAL_F4_PopSize_100_MaxEval_500000-0.01_.mat Result_BAL_ENG



clc
clear

IndependentRuns = 30;
Function = 'F5'; 

%n = 8; m = 4; e = 2; nep = 6; nsp = 2; ngh = 0.015; %pop20
% n = 9; m = 5; e = 4; nep = 6; nsp = 2; ngh = 0.015;%pop30
% n = 7; m = 3; e = 2; nep = 18; nsp = 10; ngh = 0.1; %50
n = 14; m = 6; e = 2; nep = 30; nsp = 8; ngh = 0.01; %pop100

Shrink=0.95;
stlim = 10;
MaximumNFE = 500000;

for tour=1:IndependentRuns
[Result_BAL_ENG(tour).it , Result_BAL_ENG(tour).OptCost, Result_BAL_ENG(tour).NFE, Result_BAL_ENG(tour).OptSols] = Run_BAL_ENG(Function, n,m,e,nep,nsp,ngh, MaximumNFE,Shrink,stlim);

Result_BAL_ENG(tour).BestCost = Result_BAL_ENG(tour).OptCost(end);
BestSol = Result_BAL_ENG(tour).OptSols(end);
Result_BAL_ENG(tour).BestPos = BestSol(end).Position;

end

save BAL_F5_PopSize_100_MaxEval_500000-0.01_.mat Result_BAL_ENG



clc
clear

IndependentRuns = 30;
Function = 'F6'; 

%n = 8; m = 4; e = 2; nep = 6; nsp = 2; ngh = 0.015; %pop20
% n = 9; m = 5; e = 4; nep = 6; nsp = 2; ngh = 0.015;%pop30
% n = 7; m = 3; e = 2; nep = 18; nsp = 10; ngh = 0.1; %50
n = 14; m = 6; e = 2; nep = 30; nsp = 8; ngh = 0.01; %pop100

Shrink=0.95;
stlim = 10;
MaximumNFE = 500000;

for tour=1:IndependentRuns
[Result_BAL_ENG(tour).it , Result_BAL_ENG(tour).OptCost, Result_BAL_ENG(tour).NFE, Result_BAL_ENG(tour).OptSols] = Run_BAL_ENG(Function, n,m,e,nep,nsp,ngh, MaximumNFE,Shrink,stlim);

Result_BAL_ENG(tour).BestCost = Result_BAL_ENG(tour).OptCost(end);
BestSol = Result_BAL_ENG(tour).OptSols(end);
Result_BAL_ENG(tour).BestPos = BestSol(end).Position;

end

save BAL_F6_PopSize_100_MaxEval_500000-0.01_.mat Result_BAL_ENG



clc
clear

IndependentRuns = 30;
Function = 'F7'; 

%n = 8; m = 4; e = 2; nep = 6; nsp = 2; ngh = 0.015; %pop20
% n = 9; m = 5; e = 4; nep = 6; nsp = 2; ngh = 0.015;%pop30
% n = 7; m = 3; e = 2; nep = 18; nsp = 10; ngh = 0.1; %50
n = 14; m = 6; e = 2; nep = 30; nsp = 8; ngh = 0.01; %pop100

Shrink=0.95;
stlim = 10;
MaximumNFE = 500000;

for tour=1:IndependentRuns
[Result_BAL_ENG(tour).it , Result_BAL_ENG(tour).OptCost, Result_BAL_ENG(tour).NFE, Result_BAL_ENG(tour).OptSols] = Run_BAL_ENG(Function, n,m,e,nep,nsp,ngh, MaximumNFE,Shrink,stlim);

Result_BAL_ENG(tour).BestCost = Result_BAL_ENG(tour).OptCost(end);
BestSol = Result_BAL_ENG(tour).OptSols(end);
Result_BAL_ENG(tour).BestPos = BestSol(end).Position;

end

save BAL_F7_PopSize_100_MaxEval_500000-0.01_.mat Result_BAL_ENG



clc
clear

IndependentRuns = 30;
Function = 'F8'; 

n = 8; m = 4; e = 2; nep = 6; nsp = 2; ngh = 0.015; %pop20
n = 9; m = 5; e = 4; nep = 6; nsp = 2; ngh = 0.015;%pop30
n = 7; m = 3; e = 2; nep = 18; nsp = 10; ngh = 0.1; %50
n = 14; m = 6; e = 2; nep = 30; nsp = 8; ngh = 0.1; %pop100

Shrink=0.80;
stlim = 10;
MaximumNFE = 500000;

for tour=1:IndependentRuns
[Result_BAL_ENG(tour).it , Result_BAL_ENG(tour).OptCost, Result_BAL_ENG(tour).NFE, Result_BAL_ENG(tour).OptSols] = Run_BAL_ENG(Function, n,m,e,nep,nsp,ngh, MaximumNFE,Shrink,stlim);

Result_BAL_ENG(tour).BestCost = Result_BAL_ENG(tour).OptCost(end);
BestSol = Result_BAL_ENG(tour).OptSols(end);
Result_BAL_ENG(tour).BestPos = BestSol(end).Position;

end

save BAL_F8_PopSize_100_MaxEval_500000-0.01_.mat Result_BAL_ENG





clc
clear

IndependentRuns = 30;
Function = 'F9'; 

n = 8; m = 4; e = 2; nep = 6; nsp = 2; ngh = 0.015; %pop20
n = 9; m = 5; e = 4; nep = 6; nsp = 2; ngh = 0.015;%pop30
n = 7; m = 3; e = 2; nep = 18; nsp = 10; ngh = 0.1; %50
n = 14; m = 6; e = 2; nep = 30; nsp = 8; ngh = 0.1; %pop100

Shrink=0.80;
stlim = 10;
MaximumNFE = 500000;

for tour=1:IndependentRuns
[Result_BAL_ENG(tour).it , Result_BAL_ENG(tour).OptCost, Result_BAL_ENG(tour).NFE, Result_BAL_ENG(tour).OptSols] = Run_BAL_ENG(Function, n,m,e,nep,nsp,ngh, MaximumNFE,Shrink,stlim);

Result_BAL_ENG(tour).BestCost = Result_BAL_ENG(tour).OptCost(end);
BestSol = Result_BAL_ENG(tour).OptSols(end);
Result_BAL_ENG(tour).BestPos = BestSol(end).Position;

end

save BAL_F9_PopSize_100_MaxEval_500000-0.01_.mat Result_BAL_ENG




clc
clear

IndependentRuns = 30;
Function = 'F10'; 

%n = 8; m = 4; e = 2; nep = 6; nsp = 2; ngh = 0.015; %pop20
% n = 9; m = 5; e = 4; nep = 6; nsp = 2; ngh = 0.015;%pop30
% n = 7; m = 3; e = 2; nep = 18; nsp = 10; ngh = 0.1; %50
n = 14; m = 6; e = 2; nep = 30; nsp = 8; ngh = 0.01; %pop100

Shrink=0.95;
stlim = 10;
MaximumNFE = 500000;

for tour=1:IndependentRuns
[Result_BAL_ENG(tour).it , Result_BAL_ENG(tour).OptCost, Result_BAL_ENG(tour).NFE, Result_BAL_ENG(tour).OptSols] = Run_BAL_ENG(Function, n,m,e,nep,nsp,ngh, MaximumNFE,Shrink,stlim);

Result_BAL_ENG(tour).BestCost = Result_BAL_ENG(tour).OptCost(end);
BestSol = Result_BAL_ENG(tour).OptSols(end);
Result_BAL_ENG(tour).BestPos = BestSol(end).Position;

end

save BAL_F10_PopSize_100_MaxEval_500000-0.01_.mat Result_BAL_ENG




clc
clear

IndependentRuns = 30;
Function = 'F11'; 

%n = 8; m = 4; e = 2; nep = 6; nsp = 2; ngh = 0.015; %pop20
% n = 9; m = 5; e = 4; nep = 6; nsp = 2; ngh = 0.015;%pop30
% n = 7; m = 3; e = 2; nep = 18; nsp = 10; ngh = 0.1; %50
n = 14; m = 6; e = 2; nep = 30; nsp = 8; ngh = 0.01; %pop100

Shrink=0.95;
stlim = 10;
MaximumNFE = 500000;

for tour=1:IndependentRuns
[Result_BAL_ENG(tour).it , Result_BAL_ENG(tour).OptCost, Result_BAL_ENG(tour).NFE, Result_BAL_ENG(tour).OptSols] = Run_BAL_ENG(Function, n,m,e,nep,nsp,ngh, MaximumNFE,Shrink,stlim);

Result_BAL_ENG(tour).BestCost = Result_BAL_ENG(tour).OptCost(end);
BestSol = Result_BAL_ENG(tour).OptSols(end);
Result_BAL_ENG(tour).BestPos = BestSol(end).Position;

end

save BAL_F11_PopSize_100_MaxEval_500000-0.01_.mat Result_BAL_ENG




clc
clear

IndependentRuns = 30;
Function = 'F12'; 

%n = 8; m = 4; e = 2; nep = 6; nsp = 2; ngh = 0.015; %pop20
% n = 9; m = 5; e = 4; nep = 6; nsp = 2; ngh = 0.015;%pop30
% n = 7; m = 3; e = 2; nep = 18; nsp = 10; ngh = 0.1; %50
n = 14; m = 6; e = 2; nep = 30; nsp = 8; ngh = 0.01; %pop100

Shrink=0.95;
stlim = 10;
MaximumNFE = 500000;

for tour=1:IndependentRuns
[Result_BAL_ENG(tour).it , Result_BAL_ENG(tour).OptCost, Result_BAL_ENG(tour).NFE, Result_BAL_ENG(tour).OptSols] = Run_BAL_ENG(Function, n,m,e,nep,nsp,ngh, MaximumNFE,Shrink,stlim);

Result_BAL_ENG(tour).BestCost = Result_BAL_ENG(tour).OptCost(end);
BestSol = Result_BAL_ENG(tour).OptSols(end);
Result_BAL_ENG(tour).BestPos = BestSol(end).Position;

end

save BAL_F12_PopSize_100_MaxEval_500000-0.01_.mat Result_BAL_ENG




clc
clear

IndependentRuns = 30;
Function = 'F13'; 

%n = 8; m = 4; e = 2; nep = 6; nsp = 2; ngh = 0.015; %pop20
% n = 9; m = 5; e = 4; nep = 6; nsp = 2; ngh = 0.015;%pop30
% n = 7; m = 3; e = 2; nep = 18; nsp = 10; ngh = 0.1; %50
n = 14; m = 6; e = 2; nep = 30; nsp = 8; ngh = 0.01; %pop100

Shrink=0.95;
stlim = 10;
MaximumNFE = 500000;

for tour=1:IndependentRuns
[Result_BAL_ENG(tour).it , Result_BAL_ENG(tour).OptCost, Result_BAL_ENG(tour).NFE, Result_BAL_ENG(tour).OptSols] = Run_BAL_ENG(Function, n,m,e,nep,nsp,ngh, MaximumNFE,Shrink,stlim);

Result_BAL_ENG(tour).BestCost = Result_BAL_ENG(tour).OptCost(end);
BestSol = Result_BAL_ENG(tour).OptSols(end);
Result_BAL_ENG(tour).BestPos = BestSol(end).Position;

end

save BAL_F13_PopSize_100_MaxEval_500000-0.01_.mat Result_BAL_ENG




clc
clear

IndependentRuns = 30;
Function = 'F14'; 

%n = 8; m = 4; e = 2; nep = 6; nsp = 2; ngh = 0.015; %pop20
% n = 9; m = 5; e = 4; nep = 6; nsp = 2; ngh = 0.015;%pop30
% n = 7; m = 3; e = 2; nep = 18; nsp = 10; ngh = 0.1; %50
n = 14; m = 6; e = 2; nep = 30; nsp = 8; ngh = 0.01; %pop100

Shrink=0.95;
stlim = 10;
MaximumNFE = 500000;

for tour=1:IndependentRuns
[Result_BAL_ENG(tour).it , Result_BAL_ENG(tour).OptCost, Result_BAL_ENG(tour).NFE, Result_BAL_ENG(tour).OptSols] = Run_BAL_ENG(Function, n,m,e,nep,nsp,ngh, MaximumNFE,Shrink,stlim);

Result_BAL_ENG(tour).BestCost = Result_BAL_ENG(tour).OptCost(end);
BestSol = Result_BAL_ENG(tour).OptSols(end);
Result_BAL_ENG(tour).BestPos = BestSol(end).Position;

end

save BAL_F14_PopSize_100_MaxEval_500000-0.01_.mat Result_BAL_ENG




clc
clear

IndependentRuns = 30;
Function = 'F15'; 

%n = 8; m = 4; e = 2; nep = 6; nsp = 2; ngh = 0.015; %pop20
% n = 9; m = 5; e = 4; nep = 6; nsp = 2; ngh = 0.015;%pop30
% n = 7; m = 3; e = 2; nep = 18; nsp = 10; ngh = 0.1; %50
n = 14; m = 6; e = 2; nep = 30; nsp = 8; ngh = 0.01; %pop100

Shrink=0.95;
stlim = 10;
MaximumNFE = 500000;

for tour=1:IndependentRuns
[Result_BAL_ENG(tour).it , Result_BAL_ENG(tour).OptCost, Result_BAL_ENG(tour).NFE, Result_BAL_ENG(tour).OptSols] = Run_BAL_ENG(Function, n,m,e,nep,nsp,ngh, MaximumNFE,Shrink,stlim);

Result_BAL_ENG(tour).BestCost = Result_BAL_ENG(tour).OptCost(end);
BestSol = Result_BAL_ENG(tour).OptSols(end);
Result_BAL_ENG(tour).BestPos = BestSol(end).Position;

end

save BAL_F15_PopSize_100_MaxEval_500000-0.01_.mat Result_BAL_ENG




clc
clear

IndependentRuns = 30;
Function = 'F16'; 

%n = 8; m = 4; e = 2; nep = 6; nsp = 2; ngh = 0.015; %pop20
% n = 9; m = 5; e = 4; nep = 6; nsp = 2; ngh = 0.015;%pop30
% n = 7; m = 3; e = 2; nep = 18; nsp = 10; ngh = 0.1; %50
n = 14; m = 6; e = 2; nep = 30; nsp = 8; ngh = 0.01; %pop100

Shrink=0.95;
stlim = 10;
MaximumNFE = 500000;

for tour=1:IndependentRuns
[Result_BAL_ENG(tour).it , Result_BAL_ENG(tour).OptCost, Result_BAL_ENG(tour).NFE, Result_BAL_ENG(tour).OptSols] = Run_BAL_ENG(Function, n,m,e,nep,nsp,ngh, MaximumNFE,Shrink,stlim);

Result_BAL_ENG(tour).BestCost = Result_BAL_ENG(tour).OptCost(end);
BestSol = Result_BAL_ENG(tour).OptSols(end);
Result_BAL_ENG(tour).BestPos = BestSol(end).Position;

end

save BAL_F16_PopSize_100_MaxEval_500000-0.01_.mat Result_BAL_ENG



clc
clear

IndependentRuns = 30;
Function = 'F17'; 

%n = 8; m = 4; e = 2; nep = 6; nsp = 2; ngh = 0.015; %pop20
% n = 9; m = 5; e = 4; nep = 6; nsp = 2; ngh = 0.015;%pop30
% n = 7; m = 3; e = 2; nep = 18; nsp = 10; ngh = 0.1; %50
n = 14; m = 6; e = 2; nep = 30; nsp = 8; ngh = 0.01; %pop100

Shrink=0.95;
stlim = 10;
MaximumNFE = 500000;

for tour=1:IndependentRuns
[Result_BAL_ENG(tour).it , Result_BAL_ENG(tour).OptCost, Result_BAL_ENG(tour).NFE, Result_BAL_ENG(tour).OptSols] = Run_BAL_ENG(Function, n,m,e,nep,nsp,ngh, MaximumNFE,Shrink,stlim);

Result_BAL_ENG(tour).BestCost = Result_BAL_ENG(tour).OptCost(end);
BestSol = Result_BAL_ENG(tour).OptSols(end);
Result_BAL_ENG(tour).BestPos = BestSol(end).Position;

end

save BAL_F17_PopSize_100_MaxEval_500000-0.01_.mat Result_BAL_ENG


clc
clear

IndependentRuns = 30;
Function = 'F18'; 

%n = 8; m = 4; e = 2; nep = 6; nsp = 2; ngh = 0.015; %pop20
% n = 9; m = 5; e = 4; nep = 6; nsp = 2; ngh = 0.015;%pop30
% n = 7; m = 3; e = 2; nep = 18; nsp = 10; ngh = 0.1; %50
n = 14; m = 6; e = 2; nep = 30; nsp = 8; ngh = 0.01; %pop100

Shrink=0.95;
stlim = 10;
MaximumNFE = 500000;

for tour=1:IndependentRuns
[Result_BAL_ENG(tour).it , Result_BAL_ENG(tour).OptCost, Result_BAL_ENG(tour).NFE, Result_BAL_ENG(tour).OptSols] = Run_BAL_ENG(Function, n,m,e,nep,nsp,ngh, MaximumNFE,Shrink,stlim);

Result_BAL_ENG(tour).BestCost = Result_BAL_ENG(tour).OptCost(end);
BestSol = Result_BAL_ENG(tour).OptSols(end);
Result_BAL_ENG(tour).BestPos = BestSol(end).Position;

end

save BAL_F18_PopSize_100_MaxEval_500000-0.01_.mat Result_BAL_ENG



clc
clear

IndependentRuns = 30;
Function = 'F19'; 

%n = 8; m = 4; e = 2; nep = 6; nsp = 2; ngh = 0.015; %pop20
% n = 9; m = 5; e = 4; nep = 6; nsp = 2; ngh = 0.015;%pop30
% n = 7; m = 3; e = 2; nep = 18; nsp = 10; ngh = 0.1; %50
n = 14; m = 6; e = 2; nep = 30; nsp = 8; ngh = 0.01; %pop100

Shrink=0.95;
stlim = 10;
MaximumNFE = 500000;

for tour=1:IndependentRuns
[Result_BAL_ENG(tour).it , Result_BAL_ENG(tour).OptCost, Result_BAL_ENG(tour).NFE, Result_BAL_ENG(tour).OptSols] = Run_BAL_ENG(Function, n,m,e,nep,nsp,ngh, MaximumNFE,Shrink,stlim);

Result_BAL_ENG(tour).BestCost = Result_BAL_ENG(tour).OptCost(end);
BestSol = Result_BAL_ENG(tour).OptSols(end);
Result_BAL_ENG(tour).BestPos = BestSol(end).Position;

end

save BAL_F19_PopSize_100_MaxEval_500000-0.01_.mat Result_BAL_ENG



clc
clear

IndependentRuns = 30;
Function = 'F20'; 

%n = 8; m = 4; e = 2; nep = 6; nsp = 2; ngh = 0.015; %pop20
% n = 9; m = 5; e = 4; nep = 6; nsp = 2; ngh = 0.015;%pop30
% n = 7; m = 3; e = 2; nep = 18; nsp = 10; ngh = 0.1; %50
n = 14; m = 6; e = 2; nep = 30; nsp = 8; ngh = 0.01; %pop100

Shrink=0.95;
stlim = 10;
MaximumNFE = 500000;

for tour=1:IndependentRuns
[Result_BAL_ENG(tour).it , Result_BAL_ENG(tour).OptCost, Result_BAL_ENG(tour).NFE, Result_BAL_ENG(tour).OptSols] = Run_BAL_ENG(Function, n,m,e,nep,nsp,ngh, MaximumNFE,Shrink,stlim);

Result_BAL_ENG(tour).BestCost = Result_BAL_ENG(tour).OptCost(end);
BestSol = Result_BAL_ENG(tour).OptSols(end);
Result_BAL_ENG(tour).BestPos = BestSol(end).Position;

end

save BAL_F20_PopSize_100_MaxEval_500000-0.01_.mat Result_BAL_ENG



clc
clear

IndependentRuns = 30;
Function = 'F21'; 

%n = 8; m = 4; e = 2; nep = 6; nsp = 2; ngh = 0.015; %pop20
% n = 9; m = 5; e = 4; nep = 6; nsp = 2; ngh = 0.015;%pop30
% n = 7; m = 3; e = 2; nep = 18; nsp = 10; ngh = 0.1; %50
n = 14; m = 6; e = 2; nep = 30; nsp = 8; ngh = 0.01; %pop100

Shrink=0.95;
stlim = 10;
MaximumNFE = 500000;

for tour=1:IndependentRuns
[Result_BAL_ENG(tour).it , Result_BAL_ENG(tour).OptCost, Result_BAL_ENG(tour).NFE, Result_BAL_ENG(tour).OptSols] = Run_BAL_ENG(Function, n,m,e,nep,nsp,ngh, MaximumNFE,Shrink,stlim);

Result_BAL_ENG(tour).BestCost = Result_BAL_ENG(tour).OptCost(end);
BestSol = Result_BAL_ENG(tour).OptSols(end);
Result_BAL_ENG(tour).BestPos = BestSol(end).Position;

end

save BAL_F21_PopSize_100_MaxEval_500000-0.01_.mat Result_BAL_ENG



clc
clear

IndependentRuns = 30;
Function = 'F22'; 

%n = 8; m = 4; e = 2; nep = 6; nsp = 2; ngh = 0.015; %pop20
% n = 9; m = 5; e = 4; nep = 6; nsp = 2; ngh = 0.015;%pop30
% n = 7; m = 3; e = 2; nep = 18; nsp = 10; ngh = 0.1; %50
n = 14; m = 6; e = 2; nep = 30; nsp = 8; ngh = 0.01; %pop100

Shrink=0.95;
stlim = 10;
MaximumNFE = 500000;

for tour=1:IndependentRuns
[Result_BAL_ENG(tour).it , Result_BAL_ENG(tour).OptCost, Result_BAL_ENG(tour).NFE, Result_BAL_ENG(tour).OptSols] = Run_BAL_ENG(Function, n,m,e,nep,nsp,ngh, MaximumNFE,Shrink,stlim);

Result_BAL_ENG(tour).BestCost = Result_BAL_ENG(tour).OptCost(end);
BestSol = Result_BAL_ENG(tour).OptSols(end);
Result_BAL_ENG(tour).BestPos = BestSol(end).Position;

end

save BAL_F22_PopSize_100_MaxEval_500000-0.01_.mat Result_BAL_ENG



clc
clear

IndependentRuns = 30;
Function = 'F23'; 

%n = 8; m = 4; e = 2; nep = 6; nsp = 2; ngh = 0.015; %pop20
% n = 9; m = 5; e = 4; nep = 6; nsp = 2; ngh = 0.015;%pop30
% n = 7; m = 3; e = 2; nep = 18; nsp = 10; ngh = 0.1; %50
n = 14; m = 6; e = 2; nep = 30; nsp = 8; ngh = 0.01; %pop100

Shrink=0.95;
stlim = 10;
MaximumNFE = 500000;

for tour=1:IndependentRuns
[Result_BAL_ENG(tour).it , Result_BAL_ENG(tour).OptCost, Result_BAL_ENG(tour).NFE, Result_BAL_ENG(tour).OptSols] = Run_BAL_ENG(Function, n,m,e,nep,nsp,ngh, MaximumNFE,Shrink,stlim);

Result_BAL_ENG(tour).BestCost = Result_BAL_ENG(tour).OptCost(end);
BestSol = Result_BAL_ENG(tour).OptSols(end);
Result_BAL_ENG(tour).BestPos = BestSol(end).Position;

end

save BAL_F23_PopSize_100_MaxEval_500000-0.01_.mat Result_BAL_ENG