function bezplot(p)
%This code takes an N x 8 matrix and plots N Bezier curves.
t = linspace(0,1); % Sets t between 0 and 1 for each Bezier curve
k = size(p,1); % Finds the number of rows in the N x 8 matrix p
if k <= 0 %If user enters array with no entries then error message is displayed
    error('Your matrix for p is empty.')
end
for n = 1:k
    X = (1-t).^3*p(n,1) + 3*t.*(1-t).^2*p(n,3) + 3*t.^2.*(1-t)*p(n,5) + t.^3*p(n,7); % Calculates X and Y for each row
    Y = (1-t).^3*p(n,2) + 3*t.*(1-t).^2*p(n,4) + 3*t.^2.*(1-t)*p(n,6) + t.^3*p(n,8); % of the matrix from 1 to k = N
    plot(X,Y) % Plots the Bezier curve from 1 to N with each loop and
    hold on % keeps each previous plot to display all N Bezier curves on one plot
end
hold off
end