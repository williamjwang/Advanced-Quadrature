function [M, A] = romberg(f, a, b, maxPow2)
%ROMBERG Outputs an approximation of the area under f in the interval [a,b]
% using the Romberg method with n = 1, 2, 4, 8, ... maxPow2
%   Input:
%       f - some function
%       a - left endpoint
%       b - right endpoint
%       maxPow2 - max power of 2
%   Output:
%       A - matrix containing Composite Trapezoidal rule approximations and
%           subsequent Richardson's extrapolation approximations
%       E - approximation of the area under f in the interval [a,b]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Name: William Wang
%RUID: 193006310
%Project: Comparison of Numerical Integration Techniques
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

n = 2.^(0:maxPow2); %Array of powers of 2
x = zeros(length(n), length(n)); %Initialize nxn matrix with all 0's
for i = 1:length(n)
    temp = 0;
    for j = 1:(2^(i-1))-1 %Add up all the terms in between a and b
        temp = temp + f(a + j*(b-a)/(2^(i-1)));
    end
    x(i,1) = ((b-a)/(2^i)) * (f(a) + 2*temp + f(b)); %First column of matrix, e.g. the Composite Trapezoidal Rule approximations
end
for j = 2:length(n) 
    for i = j:length(n)
        x(i,j) = x(i, j-1) + (x(i, j-1) - x(i-1, j-1))/(4^(j-1)-1); %Interatively use Richardson's extrapolation
    end
end
M = x; %The matrix containing the Romberg integration approximations
A = x(length(n), length(n)); %Best approximation of area under f in interval [a,b] using Romberg's method
end