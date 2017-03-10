function [op,sys]=trim_lin(in)
%Get system operating point
clear opspec;
opspec = operspec('smash_ol');
opspec.State(1).Known = [0;0];%X,Z
opspec.State(1).SteadyState = [0;1];
opspec.State(2).Known = 0;%theta
opspec.State(2).SteadyState = 1;%steady state
opspec.State(2).Min =0;%steady state
opspec.State(2).Max =15*pi/180;%steady state
opspec.State(3).Known = [0 0];%U,w
opspec.State(3).SteadyState = [1 1];
% opspec.State(3).Min = [in.v.st*1.852/3.6 -in.v.cr*sind(15)];%U,w
% opspec.State(3).Min = [in.v.max*1.852/3.6 in.v.cr*sind(15)];%U,w
opspec.State(4).Known = 0;%q, pitch rate
opspec.State(4).SteadyState = 1;
opspec.Inputs(1).Min=-30;
opspec.Inputs(1).Max=30;
opspec.Inputs(2).Min=0;
opspec.Inputs(2).Max=Inf;
options = findopOptions;
options.OptimizationOptions.MaxFunEvals = 1000;
options.OptimizationOptions.MaxIter = 1000;
h=waitbar(0.5,'Finding Trim point and Linearizing'); 
op = findop('smash_ol',opspec,options);
waitbar(0.8) 
%Linearize at operating point
sys = linearize('smash_ol',op);
waitbar(1) ;
pause(0.5);
close(h);
