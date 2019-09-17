%Find the vector of angles from -pi/4 to pi/4 spaced with 600 points
angVect = linspace((-pi/4), (pi/4), 600);
%Matrix to hold true sin values of each angle
sinVect = zeros(1, 600);
%Matrix to hold absolute relative errors
areVect = zeros(1, 600);

%Iterate through all angle values
for i = 1:600
    sinVect(1, i) = sin(angVect(1, i));
    areVect(1, i) = CalcARE(sinVect(1, i), angVect(1, i));
end 

%Create required graphs for problem 3
figure();
plot(angVect, sinVect);
xlabel("Approximate Sine Value");
ylabel("True Sine Value");
title("True Versus Approximate Sine Value");

hold on

figure();
plot(sinVect, areVect);
yline(.25);