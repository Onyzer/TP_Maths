function[answer]=Calcul_N(m, i, t, T)
%fonction recursive pour calculer N(m, i)
  if(m == 0)
      if( (T(i) <= t)&&(t <T(i+1)) ) % condition d'arret
         answer = 1;
      else
         answer = 0;
      endif
  else
  %calcul de la premiere partie en excluant le cas ou T(i+m) = T(i)
      if( (T(i+m)-T(i)) == 0)
          part1 = 0;
      else  
          part1 = (t - T(i))/(T(i+m)-T(i))*@Calcul_N(m-1,i, t, T); %appel recursif de la fonction pour N(m-1, i)
      endif
      
   %calcul de la premiere partie en excluant le cas ou T(i+m+1) = T(i+1)
      if( (T(m + i + 1)-T(i+1) ) == 0)
          part2 = 0;
      else  
          part2 = (T(i+m+1) - t)/(T(m + i + 1)-T(i+1))*@Calcul_N(m-1, i+1, t, T);%appel recursif de la fonction pour N(m-1, i+1)
      endif

   %return de la fonction obtenu
      answer = part1 + part2;
  endif
end