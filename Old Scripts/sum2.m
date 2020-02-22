%Year 2 tutorial sheet sum
n = input('Enter number of terms (100 on sheet): '); %Sets the value of n (which is 100 on sheet)
A = [1:n]; % Makes an matrix of dimentions 1x100 where elements go from 1 to 100
B = log(A); % Calculates the Natural Log of each element of matrix A and makes it equal to a new matrix B
C = A.*A; % Calculates the Square of each element of matrix A and makes it equal to a new matrix C
series = sum(B./C); %Calculates the Sum of each of the elements in B divided by each of the elements in C
fprintf('The answer to the summation from n = 1 to n = %d of the  \n', n)
fprintf('natural log of n divided by the square of n is equal to: \n')
fprintf('%.11f  \n', series) % Displays the answer for n terms