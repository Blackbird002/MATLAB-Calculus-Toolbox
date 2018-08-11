function [c] = derivative(f,a)
% derivative(f,a)
% c = derivative(f,a)
% derivative(c)
% a = derivative(c)
% See contents.m for more info
  if nargin == 1
    a = 0; %not used here
    c = [length(f) - 1:-1:0] .* f;
    c = c(1:end-1); %gets rod of the 0 (derivative of a constant)
  else if nargin == 2
    h = 1e-10;
    deriv = (f(a+h) - f(a)) ./ h;
    c = deriv;
  else
    disp("\nPlease enter at most 2 input paremeters!")
    disp("derivative(f,a) - returns derivative evaluated at a or") 
    disp("the polynomial coef. of the polynomial f after the derivative")
  end %if    
end %function 