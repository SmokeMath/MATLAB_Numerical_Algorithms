function [x, min, ea, iter] = goldenSearch(f, xl, xu, error, maxit)
% This function uses the golden search method as per the Applied Numerical
% Methods w/ Matlab texbook.
% Input:
%   f      = name of function 
%   xl, xu = lower and upper guesses
%   error  = desired relative error (default = 0.0001%)
%   maxit  = maximum allowable iterations (default = 25)
% Output:
%   x = location of minimum
%   min = minimum function value
%   ea = approximate error ( in %)
%   iter = number of iterations performed

if nargin<3
    error('At least 3 input arguments are required.'),
end
% check for the number of user input arguments

if nargin < 4 || isempty(error) 
    error = 0.0001;
end
% set a default error value if user does not specify a desired value

if nargin < 5 || isempty(maxit) 
    maxit = 3;
end
% set a default number of iterations if no desired value is given

phi = (1+sqrt(5))/2;
iter = 0;

while(1)
    
    d = (phi-1)*(xu - xl);
    x1 = xl + d;
    x2 = xu - d;
    
    if f(xl) < f(x2)
        xmin = x1;
        xl = x2;
    else
        xmin = x2;
        xu = xl;
    end
    
    iter = iter+1;

    if xmin ~= 0
        ea = (2 - phi) * abs((xu - xl) / xmin) * 100;
    end
    
    if ea <= error || iter >= maxit, break
    end
    
x = xmin;
min = f(xmin);

end

%extra lines of code for future assignments
%fplot (f, [-5 5])
%ylim([-10 10])    %y-axis range
%hold on
%fplot (f(min),f(min),'r*') (fix this)
%title ('Golden Search')
%xlabel('X-Axis')
%ylabel('Y-Axis')


