% standard scaler

function [scaled_X] = scaler(X)
  X_mean = mean(X, 1); X_std = std(X, 1);
  scaled_X = ( X - X_mean ) ./ X_std;
endfunction
