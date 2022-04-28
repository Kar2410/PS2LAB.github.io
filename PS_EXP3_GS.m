
%Gauss-Seidel Method
% To solve the power flow study using MATPOWER.

r=loadcase('case30')
t=runpf(r)
mpopt=mpoption('pf.alg','GS')
D=runpf(r,mpopt)
v=t.bus(:,8)
plot(v)
grid on