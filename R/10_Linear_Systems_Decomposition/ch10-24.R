Hil = function(n) outer(1:n, 1:n, function(i, j) 1/(i + j - 1))
Hl = Hil(8)
kappa(Hl, exact = TRUE)          # condition number
svd(Hl)$d                        # ten orders of magnitude
xh = rep(1, 8)                   # a known answer
max(abs(solve(Hl, Hl %*% xh) - 1))         # error in the recovered answer
c(kappa(Hil(3), exact = TRUE), kappa(diag(3), exact = TRUE))
