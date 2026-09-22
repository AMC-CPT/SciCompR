boole = function(fx, a, b, n) {            # n 은 4의 배수
  xk = seq(a, b, length.out = n + 1)
  yk = fx(xk)
  h = (b - a)/n
  i = seq(1, n - 3, 4)
  2*h/45 * sum(7*yk[i] + 32*yk[i+1] + 12*yk[i+2] + 32*yk[i+3] + 7*yk[i+4])
}

RT = rombTab(fx2, 0.8, 2.6, 4)
cbind(romberg = RT[2:4, 2],
      simpson = sapply(c(2, 4, 8), function(k) simps13(fx2, 0.8, 2.6, k)))
cbind(romberg = RT[3:4, 3],
      boole = sapply(c(4, 8), function(k) boole(fx2, 0.8, 2.6, k)))
