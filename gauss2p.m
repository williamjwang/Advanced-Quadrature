function [A] = gauss2p(f)
%GAUSS2P Outputs an approximation of the area under f in the interval [-1,1]
% using the 2-point Gaussian quadrature rule.
%   Input:
%       f - some function
%       a - left endpoint
%       b - right endpoint
%   Output:
%       E - approximation of the area under f in the interval [-1,1]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Name: William Wang
%RUID: 193006310
%Project: Comparison of Numerical Integration Techniques
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

A = f(-sqrt(3)/3) + f(sqrt(3)/3);
end