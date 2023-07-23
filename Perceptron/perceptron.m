% implementing perceptron model

%{
Author : Pratyush Rao
Date   : 20/07/2023
%}

function [W] = perceptron(X, y, eta, epochs, batch_size)
  n = size(X)(1); m = size(X)(2);
  W = randn(1, m+1);

  X_mean = mean(X, 1); X_std = std(X, 1);
  X = (X - X_mean)./ X_std;
  X = [ X ones(n, 1)];
  limiters = W;

  for i = 1:1:epochs
    ind = randi([1, n], 1, batch_size);
    Z = X(ind, :) * W';
    d = activation(Z);
    W = W + eta .* sum(( y(ind, :) - d ) .* X(ind, :), 1);
    limiters = [ limiters ; W ];
  endfor

  weights = [reshape([1:epochs+1], [epochs+1, 1])  limiters];
  dlmwrite('weights.txt', weights);

endfunction

