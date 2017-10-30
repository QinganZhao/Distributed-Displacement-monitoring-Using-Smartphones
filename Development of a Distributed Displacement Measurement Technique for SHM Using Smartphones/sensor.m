clear;clc;
load 001.txt
vari=j2(:,1);
freq=100;                   %根据采样频率设定freq的大小
figure;
h=plot(vari); hold on
xlabel('总数据个数');
ylabel('采样值');
title('原始数据图')
%x=get(h,'xdata');
%y=get(h,'ydata');
%imin=find(min(y)==y);
%imax=find(max(y)==y);
%text(x(imin),y(imin),['min=',num2str(y(imin))],'fontsize',15)
%text(x(imax),y(imax),['max=',num2str(y(imax))],'fontsize',15)


%截取的数据量转换为时间大小
vari=vari(1:12000);
vari1=vari(1:1);
n=length(vari);
time=(0:n-1)/freq;
vari2=mean(vari1);
vari3=2.5*10*(vari/1000+1)-2.5*10*(vari2/1000+1);
figure;
h=plot(time,vari3,'k');
grid on
set(gca,'FontName','Times New Roman','FontSize',21);
set(gcf,'color','w');
xlabel('Time(s)','fontsize',21);
ylabel('Displacement(mm)','fontsize',21);



