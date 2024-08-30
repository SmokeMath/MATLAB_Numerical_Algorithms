function root = nontrivialRoot(f, xl, xu, error)
% This function calculates the first nontrivial root of a function using the bisection method
% as per problem 5.6 in the Applied Numerical Algorithms book.
% Input:
%   f     - function handle representing the equation to solve
%   xl    - lower x bound
%   xu    - upper x bound
%   error - desired relative error (tolerance for stopping criterion)
% Output:
%   root  - the calculated root of the function

    % Validate input bounds
    if xl > xu
        error('xl must be less than xu');
    end

    % Ensure the function changes sign over the interval
    if f(xl) * f(xu) > 0
        error('There must be a root between xl and xu');
    end

    % Iteratively apply the bisection method
    while (abs(xl - xu) / abs((xl + xu) / 2)) > error
        xm = (xl + xu) / 2;
        if f(xl) * f(xm) > 0
            xl = xm;
        else
            xu = xm;
        end
    end

    % Return the final estimate for the root
    root = (xl + xu) / 2;
end
