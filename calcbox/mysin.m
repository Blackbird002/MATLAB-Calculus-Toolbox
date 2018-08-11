function[output] = mysin(x)
% mysin(x)
% a = mysin(x)
% See contents.m for more info
  if (x > pi)
    while (x > pi)
      x = x - (2.*pi);
    end %while
  elseif (x < -pi)
    while (x < -pi)
      x = x + (2.*pi);
    end %while
  end %if 

  %Generates the 1st and 2nd terms
  app1 = x;
  app2 = app1 + ((-1) .^(2-1) .* ((x .^(2.*2-1)) / (factorial(2.*2 -1))));
  i = 3; %index starts at 3 now because the 1st two terms are already generated.
  
  %taylor expansion:
  %Since it has to be accurate to 8 decimal places, a tolerance is set to:
  %0.00000001
  while (abs(app2 - app1) > 0.00000001)
    app1 = app2;
    app2 = app2 +((-1) .^(i-1) .* ((x .^(2.*i-1)) / (factorial(2.*i -1))));
    i = i+1;
  end %while
  
  output = app2;
end %function