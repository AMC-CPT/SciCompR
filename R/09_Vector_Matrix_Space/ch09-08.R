A = matrix(c(1, 2, 3, 4), ncol = 2)
B = matrix(c(3, 2, 1, 0), ncol = 2)
A %*% B
B %*% A               # 같지 않다
