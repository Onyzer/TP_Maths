function[answer] = courbe_spline(data, m)
  x = linespace(0,1);
  y = linespace(0,1);
  X = [];
  Y = [];
  for j = 1:length(data)
     if(i
  endfor
  for t = 1:length(x)
    for i=1:length(data)/2
      x(t) += X(i)*@Calcul_N(m, i, x(t) , T); 
      y(t) += Y(i)*@Calcul_N(m, i, y(t) , T); 
    endfor
  endfor
  plot(x, y)
end