P1 = Lam[1] * (V[, 1] %o% V[, 1])          # the first rank-1 piece
round(P1, 4)
P2 = Lam[2] * (V[, 2] %o% V[, 2])
P3 = Lam[3] * (V[, 3] %o% V[, 3])
round(P1 + P2 + P3, 10)                    # the whole matrix
c(qr(P1)$rank, qr(P1 + P2)$rank, qr(P1 + P2 + P3)$rank)
evJacobi(Be)$values               # Jacobi rotations, no characteristic poly
