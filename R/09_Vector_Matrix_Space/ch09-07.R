u = c(1, 2, 3); v = c(4, 5, 6)
sum(u * v)
t(u) %*% v            # 1 x 1 행렬
crossprod(u, v)       # 같은 값, 같은 모양
