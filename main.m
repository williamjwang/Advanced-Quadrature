%This file is the main file.

%%%%%%%%%%%%%%%%%%%
%Name: William Wang
%RUID: 193006310
%Project: Comparison of Numerical Integration Techniques
%%%%%%%%%%%%%%%%%%%

a = -1; %Left endpoint for all examples
b = 1; %Right endpoint for all examples
maxPow2 = 5; %2^5 = 32 is the largest n used in all examples of Romberg integration

%% Example 1
f = @(x) sin(x);
[approx] = gauss2p(f); %Execute gauss2p.m
fprintf("Approximation of area under f in interval [%g,%g] = %g\n", a, b, approx)
error = abs(integral(f,a,b) - approx); %If known, the actual error can be substituted for integral(f, a, b) to get more exact results
fprintf("Approximate error of Gaussian quadrature approximation: %g\n", error)

[matrix, approx] = romberg(f, a, b, maxPow2); %Execute romberg.m
matrix %Prints the matrix of Romberg integration approximations
fprintf("Approximation of area under f in interval [%g,%g] = %g\n", a, b, approx)
error = abs(integral(f, a, b) - approx); %If known, the actual error can be substituted for integral(f, a, b) to get more exact results
fprintf("Approximate error of Romberg's method approximation: %g\n\n\n", error)

%% Example 2
f = @(x) cos(x);
[approx] = gauss2p(f); %Execute gauss2p.m
fprintf("Approximation of area under f in interval [%g,%g] = %g\n", a, b, approx)
error = abs(integral(f,a,b) - approx); %If known, the actual error can be substituted for integral(f, a, b) to get more exact results
fprintf("Approximate error of Gaussian quadrature approximation: %g\n", error)

[matrix, approx] = romberg(f, a, b, maxPow2); %Execute romberg.m
matrix %Prints the matrix of Romberg integration approximations
fprintf("Approximation of area under f in interval [%g,%g] = %g\n", a, b, approx)
error = abs(integral(f, a, b) - approx); %If known, the actual error can be substituted for integral(f, a, b) to get more exact results
fprintf("Approximate error of Romberg's method approximation: %g\n\n\n", error)

%% Example 3
f = @(x) x.^2;
[approx] = gauss2p(f); %Execute gauss2p.m
fprintf("Approximation of area under f in interval [%g,%g] = %g\n", a, b, approx)
error = abs(integral(f,a,b) - approx); %If known, the actual error can be substituted for integral(f, a, b) to get more exact results
fprintf("Approximate error of Gaussian quadrature approximation: %g\n", error)

[matrix, approx] = romberg(f, a, b, maxPow2); %Execute romberg.m
matrix %Prints the matrix of Romberg integration approximations
fprintf("Approximation of area under f in interval [%g,%g] = %g\n", a, b, approx)
error = abs(integral(f, a, b) - approx); %If known, the actual error can be substituted for integral(f, a, b) to get more exact results
fprintf("Approximate error of Romberg's method approximation: %g\n\n\n", error)

%% %% Example 4
f = @(x) x.^3 + x.^2 + x + 1;
[approx] = gauss2p(f); %Execute gauss2p.m
fprintf("Approximation of area under f in interval [%g,%g] = %g\n", a, b, approx)
error = abs(integral(f,a,b) - approx); %If known, the actual error can be substituted for integral(f, a, b) to get more exact results
fprintf("Approximate error of Gaussian quadrature approximation: %g\n", error)

[matrix, approx] = romberg(f, a, b, maxPow2); %Execute romberg.m
matrix %Prints the matrix of Romberg integration approximations
fprintf("Approximation of area under f in interval [%g,%g] = %g\n", a, b, approx)
error = abs(integral(f, a, b) - approx); %If known, the actual error can be substituted for integral(f, a, b) to get more exact results
fprintf("Approximate error of Romberg's method approximation: %g\n\n\n", error)
