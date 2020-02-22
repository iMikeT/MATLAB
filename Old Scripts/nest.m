function z = nest(a,x) %a must be entered in the form [a_0 a_1 ... a_N] (constant coefficient first)
%This code computes the polynomials of degree n, evaluated at x, using
%nested multiplication
N = numel(a); %Computes the number of coefficients 
y = 0; %Sets y equal to 0
for k = N:-1:2 %The for loop starts at k = N, goes through to line 8, then comes back and repeats with k = N-1,
    y = (y + a(k))*x; %and so on until k = 2
end
if numel(a)<= 0; %If user enters array with no entries then error message is displayed
    error('Your polynomial has no coefficients.')
end
z = y + a(1); %Takes the final value of y and adds on the constant coefficient of the polynomial to get final answer
end

