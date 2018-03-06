% 
% Description
% -----------
% Function findAllPossiblePoses calculates the intervals over p2, for which there
% are varying poses. That is, it will determine over which interval for p2, 
% evaluateStruts has 0, 2, 4 and 6 different poses. It returns:
% keySet, an array of the various number of poses possible.
% keySet = [0, 2, 4, 6, 4, 2, 0]
% valueSet, an array bounding the interval over p2
% valueSet = [0, 1.149], [1.149, 3.8]...
% Taken together this forms a key-value pair such that, keySet(i) corresponds to 
% valueSet(i). 
% For example, in the above examples, over the interval [0, 1.149] t_test
% there are 0 possible poses.
%
% NOTE: This only evaluates possible p2 values from 0 to 20, as values above 
% a certain threshhold become irrelevant. That is, everything above a certain 
% value is 0.
%
%
function [keySet valueSet] = findAllPossiblePoses()

began = false;
keySet = {};
valueSet = {};
prevNumberOfZeroes = 0;
currentNumberOfZeroes = 0;

keyTally = 1;     % to keep track of where I am in my keySet and valueSet

begin = 0;        % to keep track of the beginning of my interval
finish = 0;       % to keep track of the end of my interval

  for i = 0:.1:20
    
    currentNumberOfZeroes = findNumberOfZeroes(i);  % for the current value of p2, determine how many poses there are
    
    % if the number of poses has changed since previous, add values to my keySet
    % and my valueSet and restart the counts
    if currentNumberOfZeroes != prevNumberOfZeroes  
      finish = i;
      keySet(keyTally) = prevNumberOfZeroes;
      valueSet(keyTally) = [begin, finish];
      keyTally = keyTally + 1;
      begin = i; 
    end 
    prevNumberOfZeroes = currentNumberOfZeroes;
  end

end