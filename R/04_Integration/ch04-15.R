romb = function(fx, a, b, N = 4) {
  R = matrix(nrow = N, ncol = N)
  h = b - a
  R[1, 1] = h / 2 * (fx(a) + fx(b))
  np = 1
  for (i in 2:N) {
    h = h / 2
    np = 2 * np
    R[i, 1] = 1/2 * R[i - 1, 1] + h * sum(fx(a + h * seq(1, np - 1, 2)))
    for (j in 2:i) {
      R[i, j] = R[i, j-1] + (R[i, j-1] - R[i-1, j-1]) / (4^(j-1) - 1)
    }
  }
  return(R[N, N])
}

rombTab = function(fx, a, b, N = 4) {      # 표 전체를 돌려준다
  R = matrix(NA, nrow = N, ncol = N)
  h = b - a
  R[1, 1] = h / 2 * (fx(a) + fx(b))
  np = 1
  for (i in 2:N) {
    h = h / 2
    np = 2 * np
    R[i, 1] = R[i - 1, 1] / 2 + h * sum(fx(a + h * seq(1, np - 1, 2)))
    for (j in 2:i) {
      R[i, j] = R[i, j-1] + (R[i, j-1] - R[i-1, j-1]) / (4^(j-1) - 1)
    }
  }
  return(R)
}

round(rombTab(fx2, 0.8, 2.6, 5), 9)
