% 
% Description
% -----------
% Function question5 does the same functionality of question 4, only this time where p2=7.
% That is, it finds the zeroes of the function and then plots the corresponding pose.
%
% This is accomplished by evaluating the function at .01 intervals and finding when
% there is a sign change - because when the function changes sign, that means a zero 
% must lie between them.
%

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