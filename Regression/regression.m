% regression function from scratch

function [W] = regression(X, Y, eta, batch, epochs)
  [row, col] = size(X); % getting the shape of data
  W = randn(col+1, 1); % defining the weights
  X_scaled = scaler(X);
  X_scaled = [X_scaled ones(row, 1)]; % scaling the data
  Y_scaled = scaler(Y);

  weights = W';
  % implementing mini-batch gradient descent
  for epoch = [1:epochs]
    index = randi([1 row], 1, batch);
    W = W - eta .* sum( X_scaled(index, :)' * X_scaled(index, :) * W - X_scaled(index, :)' * Y_scaled(index, :), 2);
    weights = [ weights; W' ];
  endfor

  dlmwrite('weights.txt', weights, ';');
endfunction

