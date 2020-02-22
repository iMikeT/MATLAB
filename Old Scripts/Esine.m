function Esine
%UNTITLED2 Summary of this function goes here
% My chosen function is y = exp(x^2)
E = [];
c = 3;
r = (2^(-52))^(2/3);
q = (2^(-52))^(1/3);
actual = cos(c);
x = logspace(-8,-4,10000);
exact_point = abs(actual - ((sin(c+q) - sin(c-q))/(2*q)));
for h = x
    estimate = (sin(c+h) - sin(c-h))/(2*h);
    E = [E abs(actual - estimate)];
end
for k = 1:10
E=smoothdata(E);
end


% Plot Function

% Create figure
figure1 = figure;
set(figure1, 'Position', [420, 300, 1000, 600]);

% Create axes and plots
axes1 = axes('Parent',figure1);
p = loglog(x,E,'DisplayName','Absolute Error','LineWidth',2,'Color',[0 0.5 0.7]);
hold on;
p1 = loglog(q,r,'DisplayName','Optimal Step Size','MarkerSize',10,'Marker','o','LineWidth',2,'LineStyle','none','Color',[1 0 0]);
hold off;

% Add legend
legend([p p1],'Location','NorthEast');

% Set graphics view
p2 = get(p,'Parent');
set(p2,'FontSize',14,'LineWidth',1.5);
%xticks([-2*pi -3*pi/2 -pi -pi/2 0 pi/2 pi 3*pi/2 2*pi])
%xticklabels({'-2\pi','-3\pi/2','-\pi','-\pi/2','0','\pi/2','\pi','3\pi/2','2\pi'})
box(axes1,'on');
grid(axes1,'on');



end

