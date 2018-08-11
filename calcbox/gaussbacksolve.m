function [A] = gaussbacksolve(A)
% gaussbacksolve(A)
% A = gaussbacksolve(A)
% See contents.m for more info  
  [numrows, numcols] = size(A);
  
  for k = 1:numrows-1 
    %pivot to the max value A(k,k)
    [biggestV,biggestI] = max(abs(A(k:numrows,k)));
    biggestI = biggestI + k - 1;  %Re-indexing 
    A([k biggestI], :) = A([biggestI k], :); %Swaps the rows
    
    %Gaussian elimination 
    i = k+1:numrows; %every row below it
    s = A(i,k) ./ A(k,k); 
    A(i,:) = A(i,:) - s*A(k,:); %Now a vector operation 
  end % for loop
  
  %backsolve
  for k = numrows:-1:2 %from the bottom up
    i = 1:k-1; %mask
    A(k,end) = A(k,end)./A(k,k);
    A(i,end) = A(i,end) - A(k,end).*A(i,k);
  end %for
  
  A(1,end) = A(1,end)./A(1,1);
end %function gaussbacksolve