function [a x y] = trapint(f,a,b,oy)
% trapint(f,a,b)
% trapint(f,a,b,[y1 y2 y3])
% a = trapint(f,a,b)
% a = trapint(@(x) sin(x),0,pi)
% [a x y] = trapint(f,a,b)
% See contents.m for more info
  x = linspace(a,b,5);
  
  if nargin == 4
    y = [oy(1) f(x(2)) oy(2) f(x(4)) oy(3)];
  else
    y = f(x);
  end %if

  T2 = (b-a).*(y(1) + 2.*y(3) + y(5)) ./ 4;
  T4 = (b-a).*(y(1) + 2.*y(2) + 2.*y(3) + 2.*y(4) + y(5)) ./ 8;
  
  if abs(T4 - T2) < 1e-10
    a = T4 + (1/3).*(T4 - T2);
  else
    [la lx ly] = trapint(f,a,x(3),y(1:3));
    [ra rx ry] = trapint(f,x(3),b,y(3:5));
    a = la + ra;
    x = [lx rx(2:end)];
    y = [ly ry(2:end)];
  end %if
end %trapint function  