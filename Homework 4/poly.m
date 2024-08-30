%This script evaluates problem 4.9 with chopping as per the Applied
%Numerical Methods Textbook.
% output:
% errora = percent relative error for part (a)
% errorb = percent relative error for part (b)

x = 1.37;

%part (a)
ya = (x^3)-(7*x^2)+(8*x)-0.35;

aa = chop((x^3),3);
ba = chop((-7*x^2),3);
ca = chop((8*x),3);
da = chop((-0.35),3);

chopa = aa+ba+ca+da;
errora = abs((ya-chopa)/ya)*100;

%part (b)
yb = ((x-7)*x+8)*x-0.35;

ab = chop((x-7),3);
bb = chop((ab*x),3);
cb = chop((bb+8),3);
db = chop((cb*x),3);
eb = chop((db-0.35),3);

errorb = abs((yb-eb)/yb)*100;

errora
errorb

if errora < errorb
    disp('The method used in part(a) provides a lower percent relative error.')
else
    disp('The method used in part(b) provides a lower percent relative error.')
end