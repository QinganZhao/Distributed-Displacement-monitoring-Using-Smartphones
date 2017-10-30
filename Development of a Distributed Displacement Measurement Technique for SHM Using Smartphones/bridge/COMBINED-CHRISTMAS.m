for i = 1:5
A = num2str(i);
a = ['a2',A,'.txt'];%%%%filename;
color = ['k';'b';'g';'m';'r'];
a11 = load(a);
Hour=a11(:,3);
Minute=a11(:,4);
Second=a11(:,5);
dy=a11(:,6);
dx=a11(:,7);
%accz=acc5(:,9);
interval=datenum(0,0,0,Hour,Minute,Second);
dx1=dx(1:30);
dx2=mean(dx1);
dx3=dx-dx2;
dx4=-dx3;
dx4=smooth(dx4,100);
plot(interval,dx4,color(i),'LineWidth',2);
x=interval;
datetick('x','HH:MM:SS');
set(gca,'FontName','Times New Roman','FontSize',10);
set(gcf,'color','w');
xlabel('Time','fontsize',10);
ylabel('Displacement(mm)','fontsize',10);
grid on;
hold on;
end
legend('1处加载曲线','2处加载曲线','3处加载曲线','4处加载曲线','5处加载曲线');