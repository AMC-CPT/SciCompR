Ld = LDLT(Ms)                    # from mathr
Ld$L
Ld$D
max(abs(Ld$L %*% diag(Ld$D) %*% t(Ld$L) - Ms))     # rebuilds Ms
c(prod(Ld$D), det(Ms))           # the determinant falls out
max(abs(Ld$L %*% diag(sqrt(Ld$D)) - Lc))           # the Cholesky L
