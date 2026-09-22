ErfTaylor = function(x, n) {
  k = 0:n
  2/sqrt(pi) *
    sapply(x, function(z) sum((-1)^k * z^(2*k + 1)/(factorial(k)*(2*k + 1))))
}

xg3 = seq(0, 2, length.out = 501)
m = c(4, 6, 8, 10)
cbind(terms = m,
      cheb = sapply(m, function(j)
               max(abs(ChebEval(cof[1:j], 0, 2, xg3) - Erf(xg3)))),
      taylor = sapply(m, function(j)
               max(abs(ErfTaylor(xg3, j - 1) - Erf(xg3)))))
