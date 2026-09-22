K10 = 0.1; K12 = 3; K21 = 1
A2 = matrix(c(-(K10 + K12), K12, K21, -K21), nrow = 2)
A2
eigen(A2)$values
log(2)/abs(eigen(A2)$values)
