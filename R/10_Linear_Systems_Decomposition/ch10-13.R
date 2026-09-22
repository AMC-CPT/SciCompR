eB = eigen(Be); V = eB$vectors; Lam = eB$values
round(V %*% diag(Lam) %*% t(V), 10)        # rebuild Be
c(prod(Lam), det(Be))                      # property (3)
c(sum(Lam), sum(diag(Be)))                 # property (4)
max(abs(t(V) %*% V - diag(3)))             # V is an orthogonal matrix
