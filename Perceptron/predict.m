% predict classes

%{
Author : Pratyush Rao
Date   : 20/07/2023
%}

function [cls] = predict(Z, threshold)
  if Z < 0.5
    cls = 0;
  elseif
    cls = 1;
  endif
endfunction

