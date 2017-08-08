x=0:0.02*pi:pi;
y1=cos(x);
y2=exp(1-cos(x));
y3=256*exp(1-cos(x));
% plot(x,y1,'-b',x,y2,'*g',x,y3,'ob');
% set (gcf,'Position',[00,200,400,400])

plot(x,y1,'+','linewidth',3)
hold on
plot(x,y2,'o','linewidth',3)
h=legend('Cosine distance','kernel method siatance','3');
set(get(gca,'XLabel'),'String','Angle of image vectors ','FontSize',18);
set(get(gca,'YLabel'),'String','Distance of image vectors ','FontSize',18);
legend('Function curve of cosine distance','Function curve of kernel distance');
colormap(fireprint)