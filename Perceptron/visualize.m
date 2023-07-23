% visualize perceptron

%{
Author : Pratyush Rao
Date   : 20/07/2023
%}

weights = dlmread('weights.txt');
Wi = weights(:, 2:4);

% loading an preparing the dataset
dataset = dlmread('data.txt');
X = dataset(:, 1:2); Y = dataset(:, 3);

X_scaled = scaler(X, 1);
X_scaled = [X_scaled ones(size(X)(1), 1)];


% make a scatter plot for the dataset
figure;
scatter(X_scaled(Y == 1, 1), X_scaled(Y == 1, 2), 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'k');
grid;
hold on;
scatter(X_scaled(Y == 0, 1), X_scaled(Y == 0, 2), 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'k');

for index = [1:size(Wi)(1)]
  W = Wi(index, :);
  A = W(1); B = W(2); C = W(3);
  plot([-2:0.01:2], - (C + A .* [-2:0.01:2]) ./ B, 'k--');
  axis([-3, 3, -3, 3]);
  pause(0.3);
endfor

legend('l1', 'l2');
hold off;

