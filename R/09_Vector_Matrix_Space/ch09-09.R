A = matrix(c(4, 2, 2, -1), ncol = 2)
Rhs = matrix(c(10, 3, 11, 4, 12, 5), nrow = 2)
Rhs
solve(A, Rhs)         # 각 열이 하나의 답
