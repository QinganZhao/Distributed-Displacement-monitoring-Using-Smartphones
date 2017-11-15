clear;clc;
num = 5;
for i = 1:num
A = num2str(i);
a = ['no',A,'.txt'];
color = ['k';'b';'g';'m';'r'];
a1 = load(a);
Hour=a1(:,3);
Minute=a1(:,4);
Second=a1(:,5);
dx=a1(:,6);
dy=a1(:,7);
%accz=acc5(:,9);
interval=datenum(0,0,0,Hour,Minute,Second);
%t00 = Minute*60+Second;%这一句在合成时须作人工调整；
%interval = t00;
dy1=dy(1:30);
dy2=mean(dy1);
dy3=(dy-dy2)*0.5;
dy4=dy3;
plot(interval,dy4,color(i),'LineWidth',1);
x=interval;
datetick('x','HH:MM:SS');
set(gca,'FontName','Times New Roman','FontSize',10);
set(gcf,'color','w');
xlabel('Time','fontsize',10);
ylabel('Displacement(mm)','fontsize',10);
grid on;
hold on;
end
legend('No.1','No.2','No.3','No.4','No.5');








