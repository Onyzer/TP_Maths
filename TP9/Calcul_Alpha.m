function [answer] = Calcul_Alpha(i, j, m, t, T)
  answer= (t - T[i])/(T[i+m+1-j] - T[i]);
end