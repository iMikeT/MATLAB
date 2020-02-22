function y = eloop(x,N)
% eloop(x,N) gives the value of e^x using maculaurin series up to x^N
y =0;
for k=0:N
    y = y + x.^k/factorial(k);
end
end