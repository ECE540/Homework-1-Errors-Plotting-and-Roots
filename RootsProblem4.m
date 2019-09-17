%Creates a function handle
func = @MonthlyLoanPayment;
%For part 1, the max final bracket is set to 1
maxFinalBracket = 1;

%Determines where the function is equal to zero
[bestGuess, numIters] = Bisection(func, 1, 35, maxFinalBracket);