A = matrix(c(1, 1, -1, 1), ncol = 2) / sqrt(2)   # 45 도 회전
A
A %*% t(A)
sum(A[, 1] * A[, 2])             # 두 열은 직교한다
sqrt(sum(A[, 1]^2))              # 각 열의 크기는 1 이다

x = c(3, 4)
sqrt(sum(x^2)); sqrt(sum((A %*% x)^2))           # 길이가 보존된다
