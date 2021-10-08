function [ Y ] = feedforward( X,W1,W2)
X=transpose(X); %X needs to be a column vector

A = sigmf(W1*X,[1 0]); %Values of the first hidden layer


Y = sigmf(W2*A,[1 0]); %Output Values of the network

Y = transpose(Y);
end