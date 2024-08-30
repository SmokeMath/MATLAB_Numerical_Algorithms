function root = falsePos(f,xl,xu,error)

if xl > xu
error('xl must be less than xu.');
end

if f(xl)*f(xu)>0
error('No root exists between these bounds.')
end

i = 0;
xr = 1;
xlast = 0;

while (abs(xr-xlast)/abs(xr))>error
xlast = xr;
xr=x2-(f(x2)*(x1-x2))/(f(x1)-f(x2));

if f(x1)*f(xr) > 0

x1=xr;

else
    x2=xr;
end

xr=xr;

i=i+1;

e=abs((xr-xlast)/xr);




end

root = xr;