clc
% options = odeset('RelTol',1e-10,'AbsTol',[1e-10 1e-10]);

s0 = [40 20 1 1]; %initial values 
tspan = [0 500];
%%

% h=10; 

[t k]=ode45(@modelfunction,tspan,s0);
%%
% h=20; 
[t1 k1]=ode45(@modelfunction1,tspan,s0);
%%
% h=30; 
[t2 k2]=ode45(@modelfunction2,tspan,s0);
%%
figure(1);
plot(t,k(:,3),'k','Linewidth',2);
hold on
plot(t1,k1(:,3),'r','Linewidth',2);
hold on
plot(t2,k2(:,3),'m','Linewidth',2);
% title('X(Prey) vs Time')
% xlabel('Time');
% ylabel('Prey Population');
% grid
legend('h=0','h=0.5', 'h=0.9')
hold off
xlim([0 1]);
%%
% figure(2);
% plot(t,s(:,2),'g','Linewidth',2);
% hold on
% plot(t1,s1(:,2),'r','Linewidth',2);
% hold on
% plot(t2,s2(:,2),'m','Linewidth',2);
% grid
% title('Y(Predator) vs Time')
% xlabel('Time');
% ylabel('Predator Population');
% legend('h=0.0','h=0.5', 'h=0.9')
% hold off
% %%
% % figure(3);
% % plot(t,s(:,1),'b',t,s(:,2),'r','Linewidth',5);
% % grid
% % title('X(Prey)& Y(Predator) vs Time')
% % xlabel('Time');
% % ylabel('Prey-blue, Predator-Red');
% % %%
% figure(3);
% plot(s(:,2),s(:,1),'y','Linewidth',2);
% hold on
% plot(s1(:,2),s1(:,1),'r','Linewidth',2);
% hold on
% plot(s2(:,2),s2(:,1),'m','Linewidth',2);
% grid
% title('Y(Predator) vs X(Prey');
% xlabel('Predator Population');
% ylabel(' Prey Population');
% legend('h=0.0','h=0.5', 'h=0.9')
% hold off
% ylim([5 50]);
%%