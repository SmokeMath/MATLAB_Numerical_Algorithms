function [x, fx] = parabolicInterpolation(f, x1, x2, x3, error, maxit)
% This function uses parabolic interpolation for optimization of functions
% as per the Applied Numerical Algorithms with MATLAB textbook.
% Input:
%   f    - function to be evaluated
%   x1, x2, x3 - initial guesses for the interpolation
%   error - desired error tolerance (stopping criterion)
%   maxit - maximum number of iterations allowed
% Output:
%   x    - x value of the minimum found
%   fx   - function value at the minimum

    % Set default maximum iterations if not provided
    if nargin < 6 || isempty(maxit)
        maxit = 100;  % Increased default max iterations for better accuracy
    end

    iter = 0;  % Initialize iteration counter

    while true
        % Calculate the next x value using parabolic interpolation
        x4 = x2 - 0.5 * ((x2 - x1)^2 * (f(x2) - f(x3)) - (x2 - x3)^2 * (f(x2) - f(x1))) / ...
                    ((x2 - x1) * (f(x2) - f(x3)) - (x2 - x3) * (f(x2) - f(x1)));

        % Determine the new interval
        if f(x4) > f(x2)
            x1 = x2;
            x2 = x4;
        else
            x3 = x2;
            x2 = x4;
        end

        iter = iter + 1;  % Increment the iteration counter

        % Calculate the relative error
        relative_error = abs((x4 - x2) / x4) * 100;

        % Check the stopping criteria
        if relative_error < error || iter >= maxit
            x = x4;         % The location of the minimum
            fx = f(x4);     % The function value at the minimum
            break;
        end
    end
end
