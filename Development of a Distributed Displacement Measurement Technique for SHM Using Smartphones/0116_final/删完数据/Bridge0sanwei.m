clear;clc;
num = 5;
x0 = [-214,-107,0,107,214];
xyz = [];
%[0.630960949074074]
%[0.631665671296296]
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
x = zeros(1,length(interval));
x = (x+x0(i))';
plot3(x,interval,-dy4,color(i),'LineWidth',1);
hold on;
end

x = zeros(1,length(interval));
x = (x-350)';
dy4 = zeros(1,length(interval));
plot3(x,interval,dy4,color(i),'LineWidth',1);

x = zeros(1,length(interval));
x = (x+350)';
dy4 = zeros(1,length(interval));
plot3(x,interval,dy4,color(i),'LineWidth',1);


y=interval;
datetick('y','HH:MM:SS');
set(gca,'FontName','Times New Roman','FontSize',10);
set(gcf,'color','w');
xlabel('Position','fontsize',10);
ylabel('Time','fontsize',10);
zlabel('Displacement(mm)','fontsize',10);
grid on;
hold on;
legend('No.1','No.2','No.3','No.4','No.5','No.6','No.7');
