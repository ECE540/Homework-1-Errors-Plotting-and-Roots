function [error] = CalculateError(true, approximate)
%
% [absolutRelErr] = CalculateError(true, approx)
%
% Calculates the absolute relative error between two vectors
% Input:     
%       true    -the true/expected value
% Output:    
%       approx  -the calculated value

% Calculates the error using the absolute relative error equation
error = abs((true - approximate) / true) * 100;

end % End of function CalculateError