function [c] = indefintegral(c)
% indefintegral(c)
% a = indefintegral(c)
%
% This calculates the inti-derivative of a polynomial
% It takes in the coefficients of a polynomial as a vector
% It returns the coefficients of the polynomial after applying
% the anti-derivative
% See contents.m for more info
    c = [c ./ [length(c):-1:1] ,0];
  end %function 