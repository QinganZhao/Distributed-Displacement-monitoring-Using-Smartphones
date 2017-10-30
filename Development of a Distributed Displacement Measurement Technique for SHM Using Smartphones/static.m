clear;clc;
load j2.txt        %激光位移传感器数据文件
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
vari=vari(1010:6400);
vari1=vari(1:1);
n=length(vari);
time=(0:n-1)/freq;
vari2=mean(vari1);
vari3=2.5*10*(vari/1000+1)-2.5*10*(vari2/1000+1);
figure;
h=plot(time,vari3,'k');
grid on
xlabel('t(s)','fontsize',20);
ylabel('s(mm)','fontsize',20);
set(gca,'FontName','Times New Roman','FontSize',20);
set(gcf,'color','w');
title('Sensor Time Spectrum','fontsize',20)

load v2.txt                %手机数据文件
vari4=v2(:,2);
freq=30;                   %根据采样频率设定freq的大小
figure;
h=plot(vari4); hold on      %原始数据图
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
vari4=vari4(1:1011);
n=length(vari4);
time1=(0:n-1)/freq;
vari5=vari4-35.7692;
% vari6=vari5/2;
% vari7=-vari6;
figure;
h=plot(time1,vari5,'k');
grid on
xlabel('t(s)','fontsize',20);
ylabel('s(mm)','fontsize',20);
set(gca,'FontName','Times New Roman','FontSize',20);
set(gcf,'color','w');
title('Video Time Spectrum','fontsize',20)

figure;
h=plot(time,vari3,'-k');
hold on
h=plot(time1,vari5,'-.r');
grid on
xlabel('t(s)','fontsize',20);
ylabel('s(mm)','fontsize',20);
set(gca,'FontName','Times New Roman','FontSize',20);
set(gcf,'color','w');
title('Time Spectrum','fontsize',20)
legend('激光位移传感器','视频处理结果')