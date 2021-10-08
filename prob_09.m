clc;
close all;
clear all;

x=[1 1 1 0];
tx=[0 0 1 0];
w=(2*x'-1)*(2*x-1);
for i=1:4
    w(i,i)=0;
end
con=1;
y=[0 0 1 0];
while con
    up=[4 3 2 1];
    for i=1:4
        yin(up(i))=tx(up(i))+y*w(1:4,up(i));
        if yin(up(i))>0
            y(up(i))=1;
        end
    end
    if y==x
        disp('Convergence has been obtained');
        disp('The Converged Ouput');
        disp(y);
        con=0;
    end
end