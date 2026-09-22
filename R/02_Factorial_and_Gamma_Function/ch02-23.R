Choose = function (n, r) {
  ...
  if (r > n/2) r = n - r            # 작은 쪽 절반을 쓴다
  if (r == 0) return(1)
  if (r == 1) return(n)

  Res = n
  for (i in 2:r) {
    Res = Res/i * (n - i + 1)       # 먼저 나누고 곱한다
    if (Res == +Inf) return(Res)
  }
  return(Res)
}
