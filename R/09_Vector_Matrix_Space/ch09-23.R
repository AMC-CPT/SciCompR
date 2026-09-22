B = matrix(c(2, 1, 1, 1, 2, 1, 1, 1, 2), ncol = 3)
qr(B)$rank
qr(t(B))$rank                    # 전치해도 같다

Bad = matrix(c(1, 0, 0, 2, 0, 0, 3, 0, 0), ncol = 3)
Bad
qr(Bad)$rank                     # 랭크결손
qr(matrix(c(1, 0, 0, 2, 3, 1), nrow = 2))$rank   # 2 x 3 최대행랭크
