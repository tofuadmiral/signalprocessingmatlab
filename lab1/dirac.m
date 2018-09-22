function y = dirac(x) 
% the dirac step function, u(x)

if (nargin ~= 1) 
    disp('The dirac step requires 1 argument!');
    return
end

y = cast(x==0, class(x));
