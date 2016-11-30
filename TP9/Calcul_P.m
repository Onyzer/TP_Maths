function [answer] = Calcul_P(i,j, m, t, T)
  answer = (1-@Calcul_Alpha(i,j, m, t, T))*@Calcul_P(i-1,j-1, m, t, T)+@Calcul_Alpha(i,j, m, t, T)*@Calcul_P(i,j-1, m, t, T);
end