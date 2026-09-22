A = matrix(c(1, 2, 3, 4), ncol = 2)
B = matrix(c(3, 2, 1, 0), ncol = 2)
t(A %*% B)
t(B) %*% t(A)                   # 위와 같아야 한다

M = matrix(c(1, 2, 3, 4, 5, 6), nrow = 2)   # 2 x 3
M %*% t(M)                      # 2 x 2 대칭
t(M) %*% M                      # 3 x 3 대칭
