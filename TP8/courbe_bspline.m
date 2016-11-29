function[answer] = courbe_bspline(P,T, m)
  x = linspace(T(m),T((length(P)/2)+1));
  SX = [zeros(length(x))];
  SY = [zeros(length(x))];
  for j = 1:length(P)/2
     PX(j) = P(j*2 -1);
     PY(j) = P(j*2);
  endfor  
  for i = 1:length(P)/2
    for t = 1:length(x)
      SX(t) += PX(i) * @Calcul_N(m, i , x(t), T);
      SY(t) += PY(i) * @Calcul_N(m, i , x(t), T);
     endfor
  endfor
  plot(SX, SY);
end