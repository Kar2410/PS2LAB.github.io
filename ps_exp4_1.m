% Voltage Regulation Control Based on Change in excitation.
clc
clear all
%% loading of the case data
k=loadcase('case14');
%% run power flow
y=runpf(k);
%% CHANGE IN EXICITATION
e=k;
e.gen(:,6)=1.03*e.gen(:,6);
l=runpf(e);
%%
 m=y.bus(:,8);% After load flow Voltage.
 h=l.bus(:,8);
 r=((h-m)./h).*100;
 t=[ m h r]