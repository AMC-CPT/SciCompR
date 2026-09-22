simps38 = function(fx, a, b, n) {
  if (n %% 3 != 0) return(NULL)               # n 은 3의 배수여야 한다
  xk = seq(a, b, length.out = (n + 1))
  yk = fx(xk)
  S3 = 0
  if (n > 3) S3 = sum(yk[seq(4, n - 2, 3)])   # 3의 배수 자리를 한 번 뺀다
  Ar = 3 * (b - a) / n / 8 * (yk[1] + yk[n + 1] + 3 * sum(yk[2:n]) - S3)
  return(Ar)
}

c(OF1 = simps38(fx, 0, 24, 12), OF2 = simps38(fx2, 0.8, 2.6, 12))
