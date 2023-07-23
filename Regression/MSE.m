% Mean squared error

function [error] = MSE(y, Y)
  % function MSE that takes an input true y value and a prediction value and returns an error
  error = 1/2 .* sum( ( y - Y ) .^ 2)
endfunction
