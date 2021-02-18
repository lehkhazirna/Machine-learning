function [theta, cost_history] = gradientDescent(X, y, theta, alpha, num_iterations)
  
m = length(y); % number of training examples
cost_history = zeros(num_iterations, 1);

for iter = 1:num_iterations
   error = (X * theta) - y;
   temp0 = theta(1) - ( alpha /m ) * sum(error.* X(:,1));
   temp1 = theta(2) - ( alpha /m ) * sum(error.* X(:,2));
   theta = [temp0; temp1]
   % Save the cost J in every iteration    
   cost_history(iter) = computeCost(X, y, theta);
  
end
end