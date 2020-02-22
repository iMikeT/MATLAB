function [y, error] = emac(x,N)
% emac(x) gives gives a pair of numbers [y, error] as output
% y = Maclaurin's series for e^x, error = the error
A = [0:N]; % Array from 0 to the value of N
C = factorial(A); % Array of the factorial of each element in A from 0 to the value of N
D = x.^A; % Array where each element is the value of x to the power of the elements in A from 0 to the value of N
B = D./C; % Array where each elemant in D is divided by each element in C
y = sum(B); % Calculates the sum of all the elements in B
error=((y-exp(x))/exp(x)); % calculates the error in the calculation given the x and N that were used
end
