% creating data and running the perceptron model

%{
Author : Pratyush Rao
Date   : 20/07/2023
%}

cols = 2; rows = 10000; % defining the number of rows and columns
var1 = linspace(14, 19, cols); var2 = linspace(23, 35, cols); % defining the variance for the columns
mean1 = 100 .* rand(1, cols); mean2 = 250 .* rand(1, cols); % defining random means for the columns

X1 = randn(rows/2, cols) .* var1 + mean1; % defining the input vector for class l1
X2 = randn(rows/2, cols) .* var2 + mean2; % defining the input vector for class l2
Y1 = ones(rows/2, 1); Y2 = zeros(rows/2, 1);



X = [X1; X2];
Y = [Y1; Y2];

figure;

scatter(X(Y == 1, 1), X(Y == 1, 2), 'MarkerFaceColor', 'r', 'Marker', 'o');
hold on;
scatter(X(Y == 0, 1), X(Y == 0, 2), 'MarkerFaceColor', 'b', 'Marker', 'o');
legend('l1', 'l2');
hold off;
grid;

dlmwrite('data.txt', [X Y]);
