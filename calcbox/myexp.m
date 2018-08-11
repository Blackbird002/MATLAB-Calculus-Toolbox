function [e] = myexp(x,tol)
% myexp(x,tol)
% e = myexp(x,tol)
% e = myexp(x)
% Solves e^x (exponential function)
% See contents.m for more info 
  if nargin == 1
    tol = 1e-10; %The set tolerance 
  end %if

  n = ceil(2.*x);
  x = x./n;  
  
  a1 = 1; %1st approximate
  a2 = 1 + x; %2nd approximate
  i = 2;
  
  while abs(a2 - a1) > tol
    a1 = a2;
    a2 = a2 + (x.^i) ./ factorial(i);
    i = i + 1;
  end %while
  e = a2.^n;
end %function   
  