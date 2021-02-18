% =======================================================
% =======================================================
%
% Single variable linear regression. 
% Calculation of linear regression using normal equation.
%
% 1.  Load the data from the text.
%
% 2.  Plot the data.
%
% 3.  Compute the cost.   
%
% 4.  Gradient Descent.
%  
% ======================================================= 
% =======================================================

data = load('ex1data1.txt');

% 2.Define x and y.

x=data(:,1); % means select first column from the data
y=data(:,2); % means select second column from the data


% ============================================
% 2. Plot the Data    
% ============================================
plotData(x,y);
fprintf('Program paused: press enter to continue\n');
pause;

% ============================================== 
% 3. Compute cost     
% ==============================================

m=length(x);
X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
theta = zeros(2, 1); % initialize fitting parameters

%
% Call computecost function
%

fprintf('\nTesting the cost function ...\n')
% compute and display initial cost
J = computeCost(X, y, theta);
fprintf('With theta = [0 ; 0]\nCost computed = %f\n', J);
fprintf('Expected cost value (approx) 32.07\n');

% further testing of the cost function
J = computeCost(X, y, [-1 ; 2]);
fprintf('\nWith theta = [-1 ; 2]\nCost computed = %f\n', J);
fprintf('Expected cost value (approx) 54.24\n');

fprintf('Program paused. Press enter to continue.\n');
pause;


% 
% GRADIENT DESCENT
%
iterations = 1500;
alpha = 0.01;         % learning rate

fprintf('Running gradient descent');
theta = gradientDescent(X, y, theta, alpha, iterations);

% print theta to screen
fprintf('Theta found by gradient descent:\n');
fprintf('%f\n', theta);
fprintf('Expected theta values (approx)\n');
fprintf(' -3.6303\n  1.1664\n\n');

% Plot the linear fit
hold on; % keep previous plot visible
plot(X(:,2), X*theta, '-')
legend('Training data', 'Linear regression')
hold off % don't overlay any more plots on this figure



fprintf('Program paused. Press enter to continue.\n');
pause;







