% Single variable linear regression 
% Calculation of linear regression using normal equation

% 1.load the data from the text 

data = load('cricket_chirps_versus_temperature.txt');

% 2.Define x and y

x=data(:,2); % means select second column from the data
y=data(:,1); % means select first column from the data


% 3.Create a function to plot the data
function plotData(x,y)
plot(x,y,'rx','MarkerSize',8);\
end

% 4.Plot the data
plotData(x,y);
xlabel('Rate of Chirping');
ylabel('Temperature');
fprintf('Program paused: press enter to continue\n');
pause;

% 4.Add a column of all 1s
m=length(x); 
X=[ones(m,1) x] % adds a column of 1's into x

% 5.Calculate theta
theta=pinv(X'*X)*X'*y;
display(theta);


% Plot the fitted equation we got from the regression
hold on; % this keeps our previous plot of the training data visible
plot(X(:,2), X*theta, '-')
legend('Training data', 'Linear regression')
hold off % Don't put any more plots on this figure
 
