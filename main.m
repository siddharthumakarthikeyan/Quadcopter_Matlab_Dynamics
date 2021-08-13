clear all
close all
clc

f1=@singledrone;

Tf=5;
T=[0:0.01:Tf];

x0 = [1 3 5 0 0 0 0.02 0.01 0.001 0 0 0];

[t,x] = ode45(f1, T, x0);