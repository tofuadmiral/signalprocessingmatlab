%% Question 1
% Use matlab to plot the following discrete time signals
% our range is from -10 to 10

n = -10:10;

% 1a) x[n] = u[n] -2u[n-1] + u[n-4] 

ya = unitstep(n) - 2.*unitstep(n-1) + unitstep(n-4);
ya;

% 1b) x[n] = (n+2)u[n+2] -2u[n] -nu[n-4]
yb = (n+2).*unitstep(n+2) - 2.*unitstep(n) -n.*unitstep(n-4);
yb;

% 1c) x[n] = ?[n + 1] ? ?[n] + u[n + 1] ? u[n ? 2]
yc = dirac(n+1) - dirac(n) + unitstep(n+1) - unitstep(n-2);
yc;

% 1d) x[n] = e0.8n u[n + 1] + u[n]
yd = exp(0.8*n).*unitstep(n+1) + unitstep(n);
yd;

stem(n, ya);
stem(n, yb);
stem(n, yc);
stem(n, yd);
title('Ahmed Fuad Ali 400075937 & Daniel Jabbour 400095100');


