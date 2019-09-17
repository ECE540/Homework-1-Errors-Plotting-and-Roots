function [distance] = MonthlyLoanPayment(interest)
%
% [distance] = MonthlyLoanPayment(interest)
%
% Calculates how many dollars off from the desired monthly rate will be
% give a specific interest rate.
% Input:
%       interest        -   yearly interest rate (%)
% Output:
%       distance        -   how far off from desired interest rate

principal = 25000;
numMonths = 60;
payment = 625;

rate = interest / 1200;

%Use the monthly interest formula - desired rate and calculate the result
distance = (principal * rate) / (1 - (1 + rate)^(-1 * numMonths)) - payment; 

end

