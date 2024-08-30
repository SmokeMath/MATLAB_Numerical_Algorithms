function A = annualPayment(P, n, i)
%This function computes the annual payment from problem 3.3 in the book.
% P - amount of money borrowed
% n - number of annual payments
% i - interest rate

if P >= 0 && n >= 0 && i >=0
    A = P*(i*(1+i)^n)/((1+i)^(n-1));
else
    error('Amount of money borrowed, number of annual payments, and interest rate must be greater than or equal to 0!')    
end