clc;
close all;
clear all;

X=[0 0 1; 0 1 0; 0 1 1; 1 1 1];

D=input('Enter the predicted data:');

W= rand(1,3);

for epoch =1:5000
    
    alpha=0.90;
    dWSum=zeros(3,1);
    N=4;
    for k=1:4
        x=X(k,:)';
        d=D(k);
        
        v=W*x;
        
       y=Sigmoid(v);
       e=d-y;
       
       delta=y*(1-y)*e;
       
       dW=alpha*delta*x;
       
       dWSum= dWSum+dW;
    end
    dWavg=dWSum/N;
    
    W(1)=W(1)+dWavg(1);
    W(2)=W(2)+dWavg(2);
    W(3)=W(3)+dWavg(3);
end

YY=[];

for i=1:4
    x=X(i,:)';
    v=W*x;
    y=Sigmoid(v);
    YY =[YY y];
end

disp('The predicted Output is :');
disp(YY>0.90)

       
       