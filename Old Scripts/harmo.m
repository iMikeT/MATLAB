s=0;
n=1;
for k = 1:100
    s = s + (n/k);
    if mod(k,10) == 0
        fprintf('The harmonic series with %d terms = %f \n', k, s);
    end
end