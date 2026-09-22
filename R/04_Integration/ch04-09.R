simps13 = function(fx, a, b, n) {
  if (n %% 2 != 0) return(NULL)               # n 은 짝수여야 한다
  xk = seq(a, b, length.out = (n + 1))
  yk = fx(xk)
  Sodd = sum(yk[seq(2, n, 2)])                # 가중치 4 를 받는 점
  Seven = 0
  if (n > 2) Seven = sum(yk[seq(3, n - 1, 2)])   # 가중치 2 를 받는 점
  Ar = (b - a) / n / 3 * (yk[1] + yk[n + 1] + 4 * Sodd + 2 * Seven)
  return(Ar)
}

fx2 = function(x) 3 * x * sin(x) - log(x)
c(OF1 = simps13(fx, 0, 24, 12), OF2 = simps13(fx2, 0.8, 2.6, 12))
