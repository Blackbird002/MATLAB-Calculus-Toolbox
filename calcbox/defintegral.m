function [a] = defintegral(f,a,b,type)
% defintegral(f,a,b,'type')
% a = defintegral(f,a,b,'type')
% a = defintegral(f,a,b)
% See contents.m for more info
  if nargin < 3
    disp("\nPlease enter at least 3 input paremeters!")
    disp("defintegral(f,a,b,type) - returns definite integral result")
    break
  else if nargin == 3
    type = 'simp';
  end %if

  switch type
    case 'simp'
      a = simpint(f,a,b);
    case 'trap'
      a = trapint(f,a,b);
    otherwise
      disp("Error, 4th parameter must be either 'simp' or 'trap'!")
      break   
  end %switch
end %function  
      
   