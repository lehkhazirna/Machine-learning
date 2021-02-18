function cost=computeCost(X,y,theta)

m = length(y); % number of training examples

% You need to return the following variables correctly 
cost = 0;
predict = X*theta;
sq_errors = (predict-y).^2;
cost = 1/(2*m)*sum(sq_errors);
fprintf("displaying value of J");
display(cost); 
  
  
  
end