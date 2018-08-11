function [y] = lagrange(x,dx,dy)
% lagrange(x,dx,dy)
% y = lagrange(x,dx,dy)
%
% lagrange interpolating polynomial
% x is the set of linearly distributed #s
% dx is x data points
% dy is y data points 
% See contents.m for more info
  numofdatapts = length(dx);
  y = 0;
  
  for k = 1:numofdatapts
    
    partialterms = 1;
    for j = [1:k-1 k+1:numofdatapts]
      partialterms = partialterms.*(x - dx(j)) ./ (dx(k) - dx(j));
    end %for loop
      t = partialterms.*dy(k);
  y = y + t;
  end %for loop
end %lagrange function
      