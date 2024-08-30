% This script approximates the machine epsilon as per 4.4 in the Applied Numerical Methods textbook.
% Outputs:
% e = epsilon approximation
% eps = actual machine epsilon

e = 1;
iter = 1;

while(1)
    if (e+1) <=1
        break
    end
    e = e/2;
    iter = iter+1;
end

e = 2*e;

eps
e
iter