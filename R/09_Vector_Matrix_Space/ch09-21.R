diag(3)                          # 3 x 3 단위행렬
A = matrix(c(4, 2, 2, -1), ncol = 2)
solve(A)                         # 역행렬
solve(A) %*% A
solve(A, c(10, 3))               # 식 (9.1) 의 해

M = matrix(c(1, 2, 3, 4, 5, 7, 7, 8, 9), ncol = 3)
solve(M, c(6, 6, 6))             # 미지수가 셋인 연립방정식
