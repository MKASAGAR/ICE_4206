clc;
close all;
clear all;

p1=[1 1 1 1 1 1 -1 -1 1 -1 -1 1 -1 -1 1 1 1 -1 -1 1];
p2=[1 1 1 -1 -1 1 1 1 1 -1 -1 1 1 -1 -1 1 1 -1 1 -1];

x(1,1:20)=p1;
x(2,1:20)=p2;

w=zeros(1,20);

t= [1 -1];
bias=0;

for i=1:2
    w=w+x(i,1:20)*t(i);
    bias=bias+t(i);
end

disp('The Weighted Matrix:');
disp(w);
disp(1:20)
disp('Bias value:');
disp(bias);

