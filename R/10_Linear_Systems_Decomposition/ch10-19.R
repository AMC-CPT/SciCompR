Ms = matrix(c(4, 3, 2, 1, 0.5, 3, 4, 3, 2, 1, 2, 3, 4, 3, 2,
              1, 2, 3, 4, 3, 0.5, 1, 2, 3, 4), ncol = 5)
chol(Ms)                         # upper triangular
Lc = Chol(Ms)                    # lower triangular, from mathr
Lc
max(abs(Lc %*% t(Lc) - Ms))      # rebuilds Ms exactly
