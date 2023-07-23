% Implementation after all the models

% creating data and running the perceptron model

%{
Author : Pratyush Rao
Date   : 20/07/2023
%}

dataset = dlmread('data.txt');
X = dataset(:, 1:2); Y = dataset(:, 3);
[W] = perceptron(X, Y, 0.01, 100, 32);
X_scaled = scaler(X, 1);
X_scaled = [X_scaled ones(size(X)(1), 1)];
Z = activation(X_scaled * W');

threshold = 0.5;
Z(Z < threshold) = 0;
Z(Z >= threshold) = 1;
score = accuracy(Y, Z);

disp(["The accuracy of the model = " num2str(score*100)]);

figure;
scatter(X_scaled(Y == 1, 1), X_scaled(Y == 1, 2), 'MarkerFaceColor', 'g', 'MarkerEdgeColor', 'k');
grid;
hold on;
scatter(X_scaled(Y == 0, 1), X_scaled(Y == 0, 2), 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'k');
A = W(1); B = W(2); C = W(3);
plot([-5:0.01:5], - (C + A .* [-5:0.01:5]) ./ B, 'k--');
legend('l1', 'l2');
hold off;





