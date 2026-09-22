Alu = matrix(c(2, -1, 3, 6, -5, 7, 4, -1, 6), ncol = 3)
Lm = matrix(c(2, -1, 3, 0, 1, 1, 0, 0, -1), ncol = 3)
Um = matrix(c(1, 0, 0, 3, -2, 0, 2, 1, 1), ncol = 3)
Lm %*% Um                        # equals Alu
w = forwardsolve(Lm, c(2, 1, 5)) # solve L w = b from the top down
w
backsolve(Um, w)                 # solve U x = w from the bottom up
solve(Alu, c(2, 1, 5))           # R gets there too
