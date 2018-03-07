% 
% Description
% -----------
% Function findNumberOfZeroes takes a given value of the length of the second strut
% and returns how many zeroes there are to this scenario. That is, how many
% different possible poses there can be with the given length, evaluating 
% theta over -pi to pi. The function returns an array whose first value is the 
% number of zeroes (i.e. number of poses), and the second value is an array of 
% those zeroes.  
%
% This is accomplished by evaluating the function at .01 intervals and finding when
% there is a sign change - because when the function changes sign, that means a zero 
% must lie between them.
%
%
% \param[in] p2
%    The length of the second strut 

% Inputs: p2 (the length of the second strut)

function [numberOfZeroes zeroes] = question5()
  tally = 1;                              % start counting at 1 (because Matlab starts indices at 1)
  prev = 0;
  current = 0;
  zeroes = [];
  for i = -pi:.01:pi                      % iterate the function over -pi to pi
    current = evaluateStruts(i, 7);      % evaluate the function at the given value 
    if prev*current < 0                   % if there has been a sign change, find the zero using bisection
      zero = bisection(@evaluateStruts, i-.01, i, .00001, 7);
      drawStruts(zero, 7)
      zero
     end
     prev = current;
  end
end