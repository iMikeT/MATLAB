% This script calculates an estimste for pi using the Basel problems exact
% sum announced by Euler in 1735
% Sets k as the number of terms required by the user
k = input('Enter number of terms :');
% These next lines set up the calculation for the series with the
% number of terms required and then finds an estimate for pi
A = ones(1,k); % Makes a matrix of dimentions 1xk where all elements = 1
B = [1:k]; % Makes a matix of dimentions 1xk of the positive integers
C = B.*B; % Multiplies each element in B by itself to give a matrix of dimentions 1xk of the square numbers
D = sum(A./C); % Divides each element in A by the corrisponding element in C i.e first/first, second/second and then calculates the sum of each result
E = 6*D; % Multiplies the value of C by 6
series = sqrt(E); % Squareroot the answer for E using k terms to give an estimate for pi
% Displays the answer for the series with k number of terms
fprintf('An estimate for pi using the first %d terms of the sum of the\nreciprocals of the squares and Eulers exact answer is equal to %.11f  \n', k, D)
% Calculates the value of the percentage error with k terms
P = ((series - pi)/pi)*100;
% Displays the value of the percentage error with k terms
fprintf('The percentage error is equal to %.6f  \n', P);
