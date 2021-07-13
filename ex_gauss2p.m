%% ex_gauss2p.m
% This script demonstrates the 2-point Gaussian quadrature rule for the function
% f(x) = x^3 + x^2 + x + 1 on the interval [-1,1] using the function gauss.m

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Name: William Wang
%RUID: 193006310
%Project: Comparison of Numerical Integration Techniques
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%Set up
clc %Clear command window
close all %Close all figures
f = @(x) x.^2; %Function
a = -1; %Left endpoint
b = 1; %Right endpoint

%% Execute gauss2p.m
[approx] = gauss2p(f);
fprintf("Approximation of area under f in interval [%g,%g] = %g\n", a, b, approx)

error = abs(integral(f,a,b) - approx); %If known, the actual error can be substituted for integral(f, a, b) to get more exact results
fprintf("Approximate error of Gaussian quadrature approximation: %g\n", error)