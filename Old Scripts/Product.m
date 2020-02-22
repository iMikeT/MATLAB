s = 1;
n = 0;
p = 0;
k = 0;
while s >= 0.001
    p = 2*n + 1;
    k = 2*n +2;
    s = s * (p/k);
    n = n + 1;
end
fprintf('N = %d \n', n)