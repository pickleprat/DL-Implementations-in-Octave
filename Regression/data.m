% data generation for linear regression

cols = 1; rows = 1000;
max_mean = 150; max_std = 15;
means = randn(1, cols) .* rand(1, cols) .* max_mean; % generation of means of the two columns
stds = rand(1, cols) .* rand(1, cols) .* max_std; % generation of means of the two columns

X = means + stds .* randn(rows, cols);
theta = randn(cols+1, 1); % making a regression line

error_var = 0.02 * max_mean;
Y = [X ones(rows, 1)] * theta + error_var .* randn(rows, 1); % making a final dataset
dataset = [X Y];

% plotting the dataset

figure;
scatter(X(:, 1), Y, 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'b');
hold on;
M = theta(1, :); C = theta(1, :);
plot(X(:, 1), M .* X + C, 'k--',  'LineWidth', 0.8);
grid;
hold off;

dlmwrite('data.txt', dataset, ';');
