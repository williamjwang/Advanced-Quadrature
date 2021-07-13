%% ex_romberg.m
% This script demonstrates Romberg integration for the function
% f(x) = sin(x) on the interval [0,pi] using the function romberg.m

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Name: William Wang
%RUID: 193006310
%Project: Comparison of Numerical Integration Techniques
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%Set up
clc %Clear command window
close all %Close all figures
f = @(x) sin(x); %Function
a = 0; %Left endpoint
b = pi; %Right endpoint
maxPow2 = 5; %Maximum power of 2 we want to approximate with, e.g. n = 1, 2, 4, ..., 2^(maxPow2); higher values may increase accuracy of approximation

%% Execute romberg.m
[matrix, approx] = romberg(f, a, b, maxPow2); %Call function romberg.m
matrix %Prints the matrix of Romberg integration approximations
fprintf("Approximation of area under f in interval [%g,%g] = %g\n", a, b, approx)

error = abs(integral(f, a, b) - approx); %If known, the actual error can be substituted for integral(f, a, b) to get more exact results
fprintf("Approximate error of Romberg's method approximation: %g\n", error)