function bisect(f,a,b,err)
%bisect calculates an estimate for the root of f within the interval [a,b]
fa = f(a);
fb = f(b);
if fa*fb >= 0 % For the bisection method to start we need an interval [a,b] where f(a) and f(b) have oposite sign. fa*ab must be less than zero.
    error('Root is not bracketed.') % Error message will be displayed if fa*fb is greater than or equal to zero. Function will stop.
end
count = 0;
while (b-a)/2 > err %While (b-a)/2 is greater than err, the process will loop lines 9 through 20 until it is less than or equal to err (worst case).
    x = (a+b)/2; % Calculates the number half way between interval [a,b] i.e. [0,1] gives x = 0.5.
    fx = f(x);
    if fx == 0 % If the value of fx is equal to zero then the bisection method is cut off because zero is not positive or negative.
        break % This will break or stop the loop if fx is equal to 0 (i.e. root is exactly in between [a,b]).
    end
    if fx*fa < 0% This whole if loop is to find the sign of fa or fb that is opposite to the sign of fx and replace whichever is the same sign as fx (fa or fb) 
        b = x; % with fx. Then a new value of x is found using new (a or b) and this continues until (b-a)/2 > err (worst case).
        fb = fx; 
    else 
        a = x; 
        fa = fx;
    end 
fprintf('Iterate %d has estimate %.15f. \n', count, x)
count = count + 1;
end 
x = (a+b)/2; % The while loop will stop when (b-a)/2 > err and so will not calculate the final value of x. This is why it is done here.
fprintf('The final iterate %d has an estimate of %.15f. \n', count, x)