As = matrix(c(998, -999, 1998, -1999), nrow = 2)
Lam = eigen(As)$values
Lam
max(abs(Re(Lam))) / min(abs(Re(Lam)))
