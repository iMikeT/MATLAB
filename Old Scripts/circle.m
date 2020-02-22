% This script calculates the area of a circle of a given radius
% Sets r as the value you entered
r = input('Enter radius : ');
% Calculates the area by using the new input value of r
area = pi*r^2;
% Calculates the circumference of a circle with radius r
circumference = 2*pi*r;
% Displays the answer for the area
% disp('area : ')
% disp(area)
% Displays the answer for the circumference
% disp('circumference : ')
% disp(circumference)
fprintf('The circumference of a circle of radius %.1f is %.4f  \n', r, circumference)
