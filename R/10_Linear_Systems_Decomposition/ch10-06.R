det(A)
b = c(10, 3)
solve(A, b)                      # no inverse is formed
solve(A) %*% b                   # same answer, one step more
