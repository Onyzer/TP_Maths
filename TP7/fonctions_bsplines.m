function[answer] = fonctions_bsplines(m, T)
    x = linspace(T(1) , T(length(T)) ) ; %definition de l'intervalle des x, du premier point du tableau jusqu'au dernier
    y = zeros(length(T), length(x)); %Matrice y qui contiendra toute les courbes bsplines detaille n*(taille de x)
    for i=1:length(T)-m-1
      for t=1:length(x)
        y(i, t) = @Calcul_N(m, i, x(t), T); %appel de la fonction pour calculer N(m, i)
      endfor
    endfor
    plot(x, y);
end