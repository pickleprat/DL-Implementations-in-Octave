% accuracy
%{
Author : Pratyush Rao
Date   : 20/07/2023
%}

function [score] = accuracy(Y, Y_prime)
  score = sum(Y == Y_prime)/length(Y);
endfunction
