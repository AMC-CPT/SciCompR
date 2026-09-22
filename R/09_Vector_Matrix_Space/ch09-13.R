Tr = function(M) sum(diag(M))    # R 에는 대각합 함수가 없다

A = matrix(c(1, 2, 3, 4, 5, 6), nrow = 2)     # 2 x 3
B = matrix(c(1, 0, 2, 1, 1, 3), nrow = 3)     # 3 x 2
dim(A %*% B); dim(B %*% A)
Tr(A %*% B); Tr(B %*% A)         # 크기는 달라도 대각합은 같다

D = matrix(c(2, 1, 0, 3), ncol = 2)
Tr(A %*% B %*% D); Tr(B %*% D %*% A); Tr(D %*% A %*% B)   # 순환은 같다

E = matrix(c(1, 4, 2, 1), ncol = 2)
Fm = matrix(c(0, 1, 5, 2), ncol = 2)
Tr(D %*% E %*% Fm); Tr(D %*% Fm %*% E)        # 순환이 아니면 다르다
