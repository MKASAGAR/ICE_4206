clc;
close all;
clear all;

x=-10:0.01:10;
%length(x)




%Logistic Function 

temp= exp(-x);

y1=1./(1+temp);



subplot(321)
plot(x,y1);
axis('square')
axis([min(x) max(x) -2 2]);
title('Logistic function')
xlabel('(a)')
grid on


%Hyperabolic Function .............

y2=(1-temp)./(1+temp);

subplot(322)
plot(x,y2);
axis('square')
axis([min(x) max(x) -2 2]);
title('Hyperbolic Tangent function')
xlabel('(b)')
grid on

%Identity Function..........

y3= x;

subplot(323)
plot(x,y3);
axis('square');
axis([min(x) max(x) min(x) max(x)])
title('Identity Function');
xlabel('(c)')
grid on;

%Sigmoid Function ..........

y4=1./(1+exp(10*(-x)));

subplot(324)
plot(x,y4);
axis('square')
axis([min(x) max(x) min(x) max(x)]);
title('Sigmoid Function')
xlabel('(d)')
grid on

%Threshold Function.........

% [xx,xy]=find(x>=0);
% x3=zeros(1,2000);
% 
% x3(xy)=1;

xy=find(x>=0); %xx = 1001(1) xy=1001-2001

 x3=zeros(1,2000); %1 rows and 2000 columns
   x3(xy)=1;
   

subplot(325)
plot(x,x3);
axis('square')
axis([min(x) max(x) min(x) max(x)]);
title('Threshold Function')
xlabel('(e)')
grid on


