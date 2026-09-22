set.seed(1234)
Ar = Matrix::Matrix(round(rnorm(9), 3), 3, 3)
Ar
LUr = Matrix::expand(Matrix::lu(Ar))
LUr$L
LUr$U
LUr$P                            # the row permutation
max(abs(as.matrix(LUr$P %*% LUr$L %*% LUr$U) - Ar))    # P puts the rows back
