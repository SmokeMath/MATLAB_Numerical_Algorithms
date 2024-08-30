function vol= tankVolume(R,d)
% This function computes the volume of the cylindrical tank from problem 3.1 in the book.
%  R - the tank's radius
%  d - the depth of the liquid inside of the tank

if d <= R 
    vol = pi*d^3/3;    
elseif d <= 3*R
    vol1 = pi*(R^3)/3;
    vol2 = pi*(R^2)*(d-R);
    vol = vol1+vol2;    
else
    error('Overtop')    
end