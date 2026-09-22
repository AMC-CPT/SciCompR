"%^%" = function(M, x)                       # 행렬의 거듭제곱
  with(eigen(M), vectors %*% (abs(values)^x * t(vectors)))
"%+-%" = function(m, s) c(lower = m - s, upper = m + s)

set.seed(18)
m1 = crossprod(matrix(rnorm(9), ncol = 3))   # 대칭이고 양정치다
A = m1 %^% (1/3)
c(cube = all.equal(A %*% A %*% A, m1))       # 세제곱근을 세제곱하면
10 %+-% 1.96
