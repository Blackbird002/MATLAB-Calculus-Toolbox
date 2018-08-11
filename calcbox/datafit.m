function [c] = datafit(dx,dy,x)
% datafit(dx,dy,x)
% c = datafit(dx,dy,x)
%
% V'Vc = V'y
% fits the data points with a polynomial of < k terms (degree < k -1)
% See contents.m for more info
  
  if (nargin < 3)
    disp("\nPlease enter all 3 input paremeters!")
    disp("datafit(dx,dy,n) - returns n coefficients of least squares polynomial")
    break
  end %if
  
  %Check to see if x is < # of datapoints 
  if(x >= length(dx))
    disp("\nPlease enter a value for x that is \nless than the number of data points!")
  else
    V = vander(dx, x); %gets the x # of terms of the vander 
    A = V'*V;
    b = V' * dy;
    c = linearsolver(A,b);
  end %if
end % function datafit