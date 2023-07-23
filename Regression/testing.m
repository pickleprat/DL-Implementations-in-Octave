% testing if our model gives accurate data

dataset = dlmread('data.txt', ';');
X = dataset(:, 1); Y = dataset(:, 2);
epochs = 100;
W = regression(X, Y, 0.01, 32, epochs);
X_scaled = scaler(X); Y_scaled = scaler(Y);

[row, col] = size(X);
scatter(X_scaled(:, 1), Y_scaled(:, 1), 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'b');
hold on;
weights = dlmread('weights.txt', ';');
grid;

for windex = [1: epochs+1]
  plot(X_scaled(:, 1), [X_scaled ones(row, 1)] * weights(windex, :)', 'k--');
  pause(0.1);
endfor

hold off;

