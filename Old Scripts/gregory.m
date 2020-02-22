% This script calculates an estimstion for pi using the Gregory series
% Sets k as the number of terms required by the user
k = input('Enter number of terms: ');
% These next lines set up the calculation for the Gregory series with the
% number of terms required
A = ones(1,k); % Makes an matrix of dimentions 1xk where all elements = 1
A(2:2:k)=-1; % Makes each odd element in the matrix A negative
B = (1:2:2*k); % Makes a matix of dimentions 1xk of the odd positive integers
C = sum(A./B); % Divides each element in A by the corrisponding element in B i.e first/first, second/second and then calculates the sum of each result
series = 4*C; % Multiplies the value of C by 4
% Displays the answer for the Gregory series with k number of terms
fprintf('An estimate for pi using the first %d terms of the Gregory series is equal to %.10f  \n', k, series)
% Calculates the value of the percentage error with k terms
P = ((series - pi)/pi)*100;
% Displays the value of the percentage error with k terms
fprintf('The percentage error is equal to %.6f  \n', P);
