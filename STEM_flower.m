% Define the range for x, y, and z
x = linspace(-15, 15, 100);
y = linspace(-15, 15, 100);
z = linspace(90, 101, 100);

% Create a grid of points
[X, Y] = meshgrid(x, y);

% Define the function
Z = 100 - 3 ./ sqrt(X.^2 + Y.^2) + sin(sqrt(X.^2 + Y.^2)) + sqrt(200 - (X.^2 + Y.^2) + 10 * sin(X) + 10 * sin(Y)) / 1000;

% Plot the function
surf(X, Y, Z);
