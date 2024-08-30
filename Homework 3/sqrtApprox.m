function [root, err] = divideAndAverage(a,e)
% DIVIDE AND AVERAGE method for approximating the square root of 
% a number
% input: 
%    a - number whose square root we estimate 
%    e - tolerance for error of approximation
% output: 
%    root - the approximation of sqrt(a) for the given tolerance
%    e - the error of approximation

flag=0; % if a<0, we set flag=1 so we can add imaginary unit at the end
if a==0 
    root = 0;
    err = 0;
    return    
elseif a<0
    flag = 1;
    a = -a;
end

err = Inf; % initialization for error estimation
x_old = a; % initialization for approximation of the root
while(1)
    x_new = (x_old+a/x_old)/2;
    err = abs((x_new-x_old)/x_new);
    
    if err < e 
         break;
    end
    x_old = x_new;
end

root = x_new;
if flag
    root=root*sqrt(-1);
end
end
