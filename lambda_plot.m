data = load('lambda.mat');
afr = data.lmd;
X = 0.975:0.01:1.05;
hold on;
plot(X, polyval(polyfit(afr(:,1),afr(:,2), 2), X), "LineWidth",2)
plot(X, polyval(polyfit(afr(:,3), afr(:,4), 2), X),"LineWidth",2)
plot(X, polyval(polyfit(afr(:,5), afr(:,6), 2), X),"LineWidth",2)
box on;
xline(0.99)
xline(1.01)
xlabel('Lambda [-]')
ylabel('Untreated Exhaust Gas [-]')
legend('NOx','HC', 'CO');
grid on;