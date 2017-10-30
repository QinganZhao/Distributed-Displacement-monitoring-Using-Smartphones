clear;clc;
for i = 1:5
    A=num2str(i);
    a=['a2',A,'.txt'];
    color=['m';'b';'g';'r';'k'];
    a11=load(a);
    x=a11(:,1);
    y=a11(:,2);
    plot(x,y,color(i),'MarkerSize',20,'Linewidth',2);
    set(gca,'YDir','reverse')%对Y方向反转
    set(gca,'XAxisLocation','top')%x轴放上
    axis([-400 400 -1 2.5])
    set(gca,'FontName','Times New Roman','FontSize',10);
    xlabel('Location(cm)','fontsize',10);
    ylabel('Displacement(mm)','fontsize',10);
    grid on;
    hold on;
end
legend('加载1','加载2','卸载1','卸载2','原始桥面');