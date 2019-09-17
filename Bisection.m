function [bestGuess, numIters] = Bisection(func, lowerBound, upperBound, maxFinalBracket)
%
% [bestGuess, numIters] = Bisection(func, lowerBound, upperBound, maxFinalBracket)
%
% This function will perform the root finding method of bisection. 
% Input:
%       func        -   the function which the root should be found of
%       lowerBound  -   the bottom starting value
%       upperBound  -   the upper starting value
%       maxFinalBracket -   error or how method knows when it is "good"
% Output:
%       bestGuess   -   final guess of the root
%       numIters    -   number of iterations to find bestGuess

%numIters = 0;

%Just some test cases
numIters = func(lowerBound);
bestGuess = func(upperBound);