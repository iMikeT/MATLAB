function time2(n)
%UNTITLED Summary of this function goes here
A = [];
C = [];
x = 0:100:n;
for t = 0:100:n
    a = rand(t);
    b = ones(t,1);
    tic
    a\b;
    A = [A toc];
    tic
    inv(a)*b;
    C = [C toc];
end
% Plot Function
h = plot(x,A,'o-g','LineWidth',2);
hold on;
plot(x,C,'o-r','LineWidth',2);
hold off;

% Add Legend
legend('backslash operator','matrix inverse','Location','NorthWest');

% Set Graphics View
h2 = get(h,'Parent');
set(h2,'FontSize',16,'LineWidth',2);
xlabel('Dimention of square matrix');
ylabel('Time taken in seconds');
title('Comparison between using Backslash Operation & Matrix Inverse');

end