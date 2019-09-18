principal = 25000;
numMonths = 60;
payment = 625;

%Use the monthly interest formula - desired rate and calculate the result
func = @(interest) (principal * interest / 1200) / ...
    (1 - (1 + interest / 1200)^(-1 * numMonths)) - payment; 

%Determines where the function is equal to zero with bracket of 1
[bestGuess, numIters] = Bisection(func, 1, 35, 1);
fprintf("For max bracket of 1: best guess is %d ", bestGuess);
fprintf("and number of iterations is %d\n\n",numIters);

%Do again with bracket of .1
[bestGuess, numIters] = Bisection(func, 1, 35, .1);
fprintf("For max bracket of .1: best guess is %d ", bestGuess);
fprintf("and number of iterations is %d\n\n",numIters);

%Do again with bracket of .01
[bestGuess, numIters] = Bisection(func, 1, 35, .01);
fprintf("For max bracket of .01: best guess is %d ", bestGuess);
fprintf("and number of iterations is %d\n\n",numIters);