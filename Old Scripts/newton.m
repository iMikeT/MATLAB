function newton(f,df,x0,tol,Nmax)
% Root finding by Newton-Raphson method
% f = function for which f(x) = 0 is to be solved
% df = derivative of f
% x0 = initial guess
% tol = tolerance such that code stops when abs(x_(n+1) - x_n) < tol
% Nmax = stops the code from doing wrong/useless calculations
x_n = x0 - (f(x0)/df(x0));                     % Stores first iterate. Needed for while loop condition
if x_n == x0 || isnan(x_n)
    error('You guessed the root.');            % Code stops if f(x0) = 0
elseif isinf(x_n)
    error('There is no root or the tangent at x0 does not intersect x axes.'); % Cannot proceed if df(x0) = 0 (i.e. f = @(x) constant;)
elseif abs(x_n - x0) < tol
    error('The tolerance is too large.');      % Cannot proceed because Newton-Raphson method will not start
end
n = 1;                                         % start counting iteration number (n = 1 because x1 already calulated)
while abs(x_n - x0) >= tol                     % Start of iteration, continue as long as the tolerance is less than or equal to that required
    fprintf('Estimate x%d = %.15f \n', n, x_n);
    x0 = x_n;                                  % This is the Newton-Raphson
    x_n = x0 - (f(x0)/df(x0));
    if n == Nmax                           
        error('Too many iterations.');         % Cannot proceed if maximum number of iterations is reached
    end
    n = n + 1;                                 % Increment count
end
if isnan(x_n)
    fprintf('Root is equal to %.15f. \n', x0)  % With extremely small tol and high Nmax code can give NaN by finding the root and
    return                                     % then using it to get f(x0)/f(x0) = 0/0. This displays one iterate before x_n = NaN
end
fprintf('Root is equal to %.15f. \n', x_n);
end


