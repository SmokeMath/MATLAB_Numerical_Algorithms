function [r, t] = polarCartesian(x, y)
% This function 
% x - x-coordinate
% y - y-coordinate
% r - radius
% t - Θ (theta)

r = sqrt(x^2+y^2);

if x > 0
    t = atand(y/x);
    
elseif x < 0
        if y > 0
            t = atand(y/x) + 180;
        elseif y < 0
                t = atand(y/x) - 180;
        else
            t = 180;
        end
end
        
if x==0
        if y > 0
            t = 90;
        elseif y < 0
            t = -90;
        else
            t = 0;
        end
end
        