u = c(1, 2, 3); v = c(4, 5, 6); w = c(7, 8, 9)
det(cbind(u, v, w))
-u + 2 * v                       # w 와 같다
qr(cbind(u, v, w))$rank          # 3 이 아니다
