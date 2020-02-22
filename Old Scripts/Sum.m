s=0;
n=0;
while s<=1.23
    p = 2*n + 1;
    k = p*p;
    s = s + (1/k);
    n = n + 1;
end
fprintf('N = %d \n', n)