B5 = V %*% diag(Lam^5) %*% t(V)
B5
max(abs(Be %*% Be %*% Be %*% Be %*% Be - B5))    # the same, the slow way
Bh = V %*% diag(Lam^1.5) %*% t(V)
Bh
round(Bh %*% Bh, 6)              # Bh squared is Be cubed
