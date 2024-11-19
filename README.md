# Algorithmic Solutions Suite

A comprehensive collection of computational algorithms and solutions implemented in MATLAB. This project covers diverse tasks, ranging from solving linear equations to simulating physics-based animations.

---

## Features

1. **Matrix Operations**: Solve linear systems and analyze matrix properties.
2. **Data Processing**: Generate, save, and manipulate data sets.
3. **Optimization**: Find minima and roots of functions using numerical methods.
4. **Visualizations**: Generate plots and animations to showcase results.
5. **Student Management System**: Analyze student grades and generate summaries.
6. **Physics Simulation**: Simulate and animate projectile motion.

---

## Files and Structure

| File            | Description                                                        |
|------------------|--------------------------------------------------------------------|
| `run_algorithm_suite.m` | Main script to execute all questions sequentially.            |
| `Q1.m`          | Solve a system of linear equations.                                |
| `Q2.m`          | Perform data manipulations and visualizations.                     |
| `Q4.m`          | Analyze mathematical properties using numerical methods.           |
| `Q5_1.m`        | Find minima of a function using numerical optimization.            |
| `Q5_2.m`        | Plot functions and annotate minima.                                |
| `Q6.m`          | Student grade management system.                                   |
| `Q7_1.m`        | Find roots of a function.                                          |
| `Q7_2.m`        | Plot functions and annotate roots.                                 |
| `Q8.m`          | Simulate and animate projectile motion.                            |

---

**Examples**


*% Example for Q1*

A = [1, 2, 3, 4; 5, 6, 7, 8; 9, 10, 11, 12; 13, 14, 15, 16];
b = [1; 2; 3; 4];
[x, is_invertible] = Q1(A, b);

if is_invertible
    disp('Solution:');
    disp(x);
else
    disp('Matrix is not invertible.');
end



*% Example for Q7_1*

x_range = [1, 3];
tolerance = 0.001;
[root, iterations] = Q7_1(@(x) x.^3 - 2*x.^2 + 4*x - 8, x_range, tolerance);

disp(['Root found at: ', num2str(root)]);
disp(['Iterations: ', num2str(iterations)]);



*% Example for Q7_2*

Q7_2(@(x) x.^3 - 2*x.^2 + 4*x - 8, x_range, root);



*% Example for Q8*

v0 = 20; % Initial velocity (m/s)
theta = pi / 4; % Launch angle (radians)
g = 9.81; % Gravitational acceleration (m/s^2)

t = linspace(0, 3, 100); % Time vector
x = v0 * cos(theta) * t; % Horizontal position
y = v0 * sin(theta) * t - 0.5 * g * t.^2; % Vertical position

plot(x, y);
xlabel('Horizontal Distance (m)');
ylabel('Vertical Height (m)');
title('Projectile Motion');
