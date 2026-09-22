GQuad8 = function(fx, a, b) {
  xi = c(0.1834346425, 0.5255324099, 0.7966664774, 0.9602898565)
  wi = c(0.3626837834, 0.3137066459, 0.2223810345, 0.1012285363)
  xa = (b - a) / 2
  xb = (a + b) / 2
  Ar = xa * sum(wi * (fx(xi * xa + xb) + fx(-xi * xa + xb)))
  return(Ar)
}

format(GQuad8(fx, 0, 24), digits = 16)
format(ifx(0, 24), digits = 16)

format(GQuad8(fx2, 0.8, 2.6), digits = 16)
format(exact2, digits = 16)
