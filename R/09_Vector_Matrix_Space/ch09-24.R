A = matrix(c(1, 0, 0, 1, 2, 2), nrow = 2)
A
n0 = MASS::Null(t(A))            # A 의 영공간의 기저
n0
n0 / n0[3]                       # 셋째 성분으로 나누어 보면
A %*% n0                         # 0 이 되어야 한다
ncol(A) - qr(A)$rank             # 차원 정리
