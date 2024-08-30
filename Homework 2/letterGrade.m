function grade = letterGrade(score)
% This function will provide a letter grade after a numerical score has been input.
% The score must be no less than 0 and no greater than 100.
if score > 100 || score < 0
    error('Score must be between 0 and 100')
end
if score >= 90 && score <=100
    grade = 'A';
elseif score >= 80 && score <=89
    grade = 'B';
elseif score >= 70 && score <=79
    grade = 'C';
elseif score >= 70 && score <=69
    grade = 'D';
else
    grade = 'F';
end
