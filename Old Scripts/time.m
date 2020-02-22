function time(n)
% Comparison between time taken to use backslash operation and matrix
% inverse as matrix dimention increase to n x n matrix (5000 x 5000 in our case)
A = [];                            % Sets up empty arrays
C = [];
p = 0:50:n;                        % Needed for x axis to match up with y axis
for t = 0:50:n                     % Loop until matrix dimension is n x n
    a = rand(t);
    b = ones(t,1);
    tic                            % Starts timer for first operation
    a\b;
    A = [A toc];                   % Updates array A and stores elapsed time
    tic                            % Starts timer for second operation
    inv(a)*b;
    C = [C toc];                   % Updates array C and stores second elapsed time
end
% Plot Function                    % Sets custom properties to plots
h = plot(p,A,'r*','LineWidth',2);
hold on;
plot(p,C,'g*','LineWidth',2);
plot(p,A,'-g','LineWidth',2);
plot(p,C,'-r','LineWidth',2);
hold off;

% Add Legend
legend('backslash operator','matrix inverse','Location','NorthWest');

% Set Graphics View                % Sets custom properties for the figure
h2 = get(h,'Parent');
set(h2,'FontSize',14,'LineWidth',2);
xlabel('Dimention of square matrix');
ylabel('Time taken in seconds');
title('Comparison between using Backslash Operation & Matrix Inverse');
end