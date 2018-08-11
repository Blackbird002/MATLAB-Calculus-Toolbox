function [a x y] = simpint(f,a,b,oy)
% simpint(f,a,b)
% simpint(f,a,b,[y1 y2 y3])
% a = simpint(f,a,b)
% a = simpint(@(x) sin(x),0,pi)
% [a x y] = simpint(f,a,b)
% See contents.m for more info
  x = linspace(a,b,5);
  
  if nargin == 4
    y = [oy(1) f(x(2)) oy(2) f(x(4)) oy(3)];
  else
    y = f(x);
  end %if

  S2 = (b-a).*(y(1) + 4.*y(3) + y(5)) ./ 6;
  S4 = (b-a).*(y(1) + 4.*y(2) + 2.*y(3) + 4.*y(4) + y(5)) ./ 12;
  
  if abs(S4 - S2) < 1e-10
    a = S4 + (1/15).*(S4 - S2);
  else
    [la lx ly] = simpint(f,a,x(3),y(1:3));
    [ra rx ry] = simpint(f,x(3),b,y(3:5));
    a = la + ra;
    x = [lx rx(2:end)];
    y = [ly ry(2:end)];
  end %if
end %simpint function  
  