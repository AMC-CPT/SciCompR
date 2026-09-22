Sm = matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), ncol = 3)
sv = svd(Sm)
sv$d                             # the third one is numerically zero
S1 = sv$d[1] * (sv$u[, 1] %o% sv$v[, 1])
round(S1, 4)
S2 = sv$d[2] * (sv$u[, 2] %o% sv$v[, 2])
round(S1 + S2, 6)                # two pieces rebuild the matrix
c(qr(S1)$rank, qr(S1 + S2)$rank)
