Gm = matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), ncol = 3)
det(Gm)
MASS::ginv(Gm)                   # Moore-Penrose inverse
Gm %*% MASS::ginv(Gm) %*% Gm     # equals Gm
sasLM::g2inv(Gm)                 # g2 inverse
Gm %*% sasLM::g2inv(Gm) %*% Gm   # equals Gm as well
