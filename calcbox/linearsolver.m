function [x] = linearsolver(A,b)
% linearsolver(A,b)
% x = linearsolver(A,b)
%
% A is a matrix of the coefficients of the left side of the system
% b is a vector of the solutions (right side)
% uses the gaussbacksolve function
% See contents.m for more info
 
  %augments the matrix:
  A = [A b];
  
  %gauss jordan or gaussbacksolve
  A = gaussbacksolve(A);
  x = A(:,end);
end %linesolver function
  
  
  