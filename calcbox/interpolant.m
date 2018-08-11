function [c] = interpolant(dx,dy)
% interpolant(dx,dy)
% c = interpolant
%
% Vc = y
% solves for c
% dx is x data points
% dy is y data points
% See contents.m for more info 
  V = vander(dx);
  c = linearsolver(V,dy);
end %interpolant function