function [monthly] = MonthlyLoanPayment(principal, interest, numMonths)
%
% [monthly] = MonthlyLoanPayment(principal, interest, numMonths)
%
% Calculates the monthly payment on a loan
% Input:
%       pricipal        -   the size of the loan
%       interest        -   yearly interest rate (%)
%       numMonths       -   number of months to be spent paying off loan
% Output:
%       monthly         -   monthly payment

rate = interest / 1200;

%Use the monthly interest formula and calculate the result
monthly = (principal * rate) / (1 - (1 + rate)^(-1 * numMonths)); 

end

