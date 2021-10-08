clc;
close all;
clear all;

X=[1 0 0; 1 0 1; 1 1 0;1 1 1];
D=[1 0 1 0];


E1=zeros(1000,1);
E2=zeros(1000,1);

 W1=rand(1,3);
 W2=rand(1,3);

% W1 = 2*rand(1, 3) - 1;
% W2 = W1;

for epoch=1:1000
    alpha=0.90;
    N=4;
    
    for k =1:4
        x=X(k,:)';
        d=D(k);
        v1=W1*x;
        
        y1=sig(v1);
        e1=d-y1;
        
        delta1=y1*(1-y1)*e1;
        
        dW1=alpha*delta1*x;
        
        W1(1)=W1(1)+dW1(1);
        W1(2)=W1(2)+dW1(2);
        W1(3)=W1(3)+dW1(3);
    end
    
    alpha =0.90;
    dWsum=zeros(3,1);
    N=4;
    
    %Batch Method...
    for k =1:4
        x=X(k,:)';
        d=D(k);
        v2=W2*x;
        
        y2=sig(v2);
        e2=d-y2;
        
        delta2=y2*(1-y2)*e2;
        
        dW2=alpha*delta2*x;
        dWsum=dWsum+dW2;
    end
        dWavg=dWsum/N;
    
        W2(1)=W2(1)+dWavg(1);
        W2(2)=W2(2)+dWavg(2);
        W2(3)=W2(3)+dWavg(3);
           
        es1=0;
        es2=0;
        N=4;
        for k=1:4
            x=X(k,:)';
            d=D(k);
            v1=W1*x;
            y1=sig(v1);
            
            
            es1=es1+(d-y1)^2;
            
            v2=W2*x;
            y2=sig(v2);
            es2=es2+(d-y2)^2;
        end
        E1(epoch)=es1/N;
        E2(epoch)=es2/N;
        
end
    
plot(E1,'r');
hold on;

plot(E2,'b');

grid on;
xlabel('Epoch')
ylabel('Avarage of training data');



    
        