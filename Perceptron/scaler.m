% Standard scaler

%{
Author : Pratyush Rao
Date   : 20/07/2023
%}

function [scaled_X] = scaler(X, dim)
  X_mean = mean(X, dim); X_std = std(X, dim);
  scaled_X = (X - X_mean)./ X_std;
endfunction


