% 
% Description
% -----------
% Function question6 finds a value for p2 such that there exist 2 struts
%
function p2 = question6()

prevNumberOfZeroes = 0;
currentNumberOfZeroes = 0;

  for i = 0:.1:20
    currentNumberOfZeroes = findNumberOfZeroes(i);  % for the current value of p2, determine how many poses there are
    
    % if the number of poses has changed since previous, add values to my keySet
    % and my valueSet and restart the counts
    if currentNumberOfZeroes == 2
      i
      break;
    end ;
  end

p2 = i;
end