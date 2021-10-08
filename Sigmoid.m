% Sigmoid Function to calculate the activation

function y = Sigmoid(x)
  y = 1 ./ (1 + exp(-x));
end