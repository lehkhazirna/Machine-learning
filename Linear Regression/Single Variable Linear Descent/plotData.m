%===============Plot on a graph==================
%================================================
function plotData(x,y)
  figure;
  plot(x,y,'rx','MarkerSize',8);
  xlabel("Training Set");
  ylabel("Prediction results");
end