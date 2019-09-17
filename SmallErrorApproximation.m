% Find the vector of angles from -pi/4 to pi/4 spaced with 600 points
angleVector = linspace((-pi/4), (pi/4), 600);
% Matrix to hold true sin values of each angle
sineVector = zeros(1, 600);
% Matrix to hold absolute relative errors
errorVector = zeros(1, 600);

% Iterate through all angle values
for i = 1:600
    sineVector(1, i) = sin(angleVector(1, i)); % Finds the sin of each of the angles
    errorVector(1, i) = CalculateError(sineVector(1, i), angleVector(1, i)); % Finds the absolute relative error between guess and true
end 

% Create required graphs for problem 3
% Graph for problem 3a
figure();
x = 1:600;
y1 = sineVector;
y2 = angleVector;
plot(x, y1, x, y2);
xlabel("1 <= x <= 600");
ylabel("True and Approximated Sine Function (rad)");
title("True and Approximate Sine Value Over Specified Interval");
legend({'y = True Sine Function', 'y = Approximated Sine Function'}, 'Location', 'southeast');

hold on

% Graph for problem 3b
figure();
plot(angleVector, errorVector);
yline(.25);
ylabel("Absolute Relative Error (%)");
xlabel("Angle (rad)");
title("Absolute Relative Error Versus Angle");
legend({"ARE vs Angle", 'y = .25'});

hold on

% Graph for problem 3c
figure()
plot(angleVector, errorVector);
ylim([0, .5]);
ylabel("Absolute Relative Error (%)");
xlabel("Angle (rad)");
title("Absolute Relative Error Versus Angle: Close-Up");