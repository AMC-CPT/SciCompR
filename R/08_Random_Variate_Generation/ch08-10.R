Rgamma = function(n, alph, bet) {
  stopifnot(alph > 0, bet > 0)
  Res = vector(length = n)
  if (alph < 1) {                              # Ahrens-Dieter
    b1 = (exp(1) + alph)/exp(1)
    for (i in 1:n) {
      repeat {
        U = runif(2); W = b1*U[1]
        if (W < 1) { Y = W^(1/alph); if (U[2] <= exp(-Y)) break }
        else { Y = -log((b1 - W)/alph); if (U[2] <= Y^(alph - 1)) break }
      }
      Res[i] = bet*Y
    }
  } else if (alph > 1) {                       # Cheng
    a1 = 1/sqrt(2*alph - 1); b1 = alph - log(4)
    g1 = alph + 1/a1; d1 = 1 + log(4.5)
    for (i in 1:n) {
      repeat {
        U = runif(2)
        V = a1*log(U[1]/(1 - U[1])); Y = alph*exp(V)
        Z = U[1]*U[1]*U[2]; W = b1 + g1*V - Y
        if (W + d1 - 4.5*Z >= 0 | W >= log(Z)) break
      }
      Res[i] = bet*Y
    }
  } else Res = -log(runif(n))*bet              # alph == 1 is exponential
  return(Res)
}

set.seed(8)
g = Rgamma(1e5, 2, 3)
rbind(sample = c(mean(g), var(g)), true = c(2*3, 2*3^2))
