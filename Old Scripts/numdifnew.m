function numdif
% This code will generate the graph of f(x), f'(x) and f''(x) where f(x) =
% sin(3x)/x

A = [];
B = [];
C = [];
h = 0.000001; % Value of the Step Size
x = 0:0.01:8; 
for n = 0:0.01:8
    y = (1/n)*sin(3*n); % My chosen function
    A = [A y];
    y1 = (((1/(n+h))*sin(3*(n+h)))-((1/(n-h))*sin(3*(n-h))))/(2*h); % These lines calculate the first and second derivatives of my function
    B = [B y1];
    y2 = ((((1/(n+h))*sin(3*(n+h))))-(2*((1/n)*sin(3*n)))+((1/(n-h))*sin(3*(n-h))))/h^2; % f using the Symmetric-difference formula.
    C = [C y2];
end

% Plot Function

% Create figure
figure1 = figure;
set(figure1, 'Position', [420, 300, 1000, 600]);

% Create axes and plots
axes1 = axes('Parent',figure1);
h = plot(x,A,'DisplayName','(1/x)sin(3x)','LineWidth',2,'Color',[0 0.5 0.7]);
hold on;
h1 = plot(x,B,'DisplayName','1st derivative','LineWidth',2,'Linestyle','-.','Color',[1 0 0]);
h2 = plot(x,C,'DisplayName','2nd derivative','LineWidth',2,'Linestyle',':','Color',[0.5 0 1]);
hold off;

% Add legend
legend([h h1 h2],'Location','NorthEast');

% Set graphics view
h2 = get(h,'Parent');
set(h2,'FontSize',14,'LineWidth',1.5);
xticks([-2*pi -3*pi/2 -pi -pi/2 0 pi/2 pi 3*pi/2 2*pi])
xticklabels({'-2\pi','-3\pi/2','-\pi','-\pi/2','0','\pi/2','\pi','3\pi/2','2\pi'})
box(axes1,'on');
grid(axes1,'on');

end