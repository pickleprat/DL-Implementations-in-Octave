% Designing the activation function for

function [phi] = activation(x)
  phi = ( 1 + exp( - x )) .^ -1 ; % design custom activation function
endfunction
