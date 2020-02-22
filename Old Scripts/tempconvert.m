function tempconvert(C)
% Converts temperature from Celsius to Kelvin
K = C + 273.15;
% Converts temperature from Celsius to Fahrenheit
F = ((9/5)*C) + 32;
if C < -273.15
    fprintf('Physically impossible temperature!  \n')
    return;
end
if C > 100
    fprintf('Oooh that is very hot!  \n')
end
if C == 23
    fprintf('By the way, that''s my favourite temperature.  \n')
end
U = input('What unit to convert to? (type 1 for K, 2 for F) ');
if U == 1
    % case 1 - convert to Kelvin
fprintf('That equals %f Kelvin.  \n', K)
elseif U == 2
    % case 2 - convert to Fahrenheit
    fprintf('That equals %f Fahrenheit.  \n', F)
else
    % case 3 - tell the user to try again
    fprintf('Please try again.  \n')
    tempconvert(C);
end
end