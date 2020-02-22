function z = interDD(X,Y,x0) %X, Y must be entered in the form [x_1 x_2 ... x_N] and [y_1 y_2 ... y_N]
g = @DD;
A = g(X,Y);
%This code computes the polynomials of degree n, evaluated at x0, using
%nested multiplication
N = length(A); %Computes the number of coefficients (numbers in the diagonal)
y = 0; %Sets y equal to 0
for p = N:-1:2 %The for loop starts at p = N, goes through to line 10, then comes back and repeats with p = N-1, until p = 2
    for r = N-1:-1:1
    y = (y + A(p))*(x0 - X(r));
    end
end
if numel(A) <= 0 %If user enters array with no entries then error message is displayed
    error('Your polynomial has no coefficients.')
end
z = y + Y(1); %Takes the final value of y and adds on the constant coefficient of the polynomial to get final answer
end
function A = DD(X,Y)
% output A = top diagonal of the divided-difference scheme
n = length(X);
for i = 1:n
    v(i,1) = Y(i);      % The first column f[x_i]
end

for j = 2:n             % Fill in the next columns
    for i = 1:n + 1 - j % ...from top to bottom
        v(i,j) = (v(i + 1,j - 1) - v(i,j - 1))/(X(i + j - 1) - X(i)); % Divided differences
    end
end

for k = 1:n
    A(k) = v(1,k);      % Output = the top diagonal
end
end

