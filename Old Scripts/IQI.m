function IQI(f,x0,x1,x2,n)
k = 3;
n = n + 1;
while k ~= n
f0 = f(x0);
f1 = f(x1);
f2 = f(x2);
xn = ((f1*f2*x0)/((f0-f1)*(f0-f2))) + ((f0*f2*x1)/((f1-f0)*(f1-f2))) + ((f0*f1*x2)/((f2-f0)*(f2-f1)));
x0 = x1;
x1 = x2;
x2 = xn;
fprintf('Value of x_%d is %.15f. \n',k,xn)
k = k + 1;
end
end