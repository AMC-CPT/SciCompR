Eg = eigen(A)
Eg$values
P = Eg$vectors
drop(P %*% diag(exp(Eg$values * t)) %*% solve(P) %*% x0)
