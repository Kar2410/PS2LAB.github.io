% netwon raphson method 
% % To solve the power flow study using MATPOWER.

clc;clear all;
r=loadcase('case30')
t=runpf(r)
mpopt=mpoption('pf.alg','NR')
D=runpf(r,mpopt)
v=t.bus(:,8)
plot(v)
grid on