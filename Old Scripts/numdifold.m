function numdifold
% This code will generate the graph of f(x), f'(x) and f''(x) where f(x) =
% sin(3x)/x

h = 0.000001; % Value of the Step Size
x = linspace(-8,8,1000); 
f = (1./x).*sin(3.*x); % My chosen function
f1 = (((1./(x+h)).*sin(3.*(x+h)))-((1./(x-h)).*sin(3.*(x-h))))/(2*h); % These lines calculate the first and second derivatives of my function
f2 = ((((1./(x+h)).*sin(3.*(x+h))))-(2.*((1./x).*sin(3.*x)))+((1./(x-h)).*sin(3.*(x-h))))/h^2; % f using the Symmetric-difference formula.

% Plot Function

% Create figure
figure1 = figure;
set(figure1, 'Position', [420, 300, 1000, 600]);

% Create axes and plots
axes1 = axes('Parent',figure1);
h = plot(x,f,'DisplayName','(1/x)sin(3x)','LineWidth',2,'Color',[0 0.5 0.7]);
hold on;
h1 = plot(x,f1,'DisplayName','1st derivative','LineWidth',2,'Linestyle','-.','Color',[1 0 0]);
h2 = plot(x,f2,'DisplayName','2nd derivative','LineWidth',2,'Linestyle',':','Color',[0.5 0 1]);
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