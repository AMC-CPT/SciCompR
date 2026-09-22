C1 = c(1, 0, 2); C2 = c(0, 2, 1)           # split the first column
Rest = A3[, 2:3]
c(det(cbind(C1 + C2, Rest)),
  det(cbind(C1, Rest)) + det(cbind(C2, Rest)))   # axiom (1)
det(cbind(c(1, 2, 3), c(1, 2, 3), c(7, 8, 9)))   # axiom (2)
det(diag(3))                                     # axiom (3)
det(A3[, c(2, 1, 3)])                            # swapping flips the sign
det(cbind(A3[, 1] + 5 * A3[, 2], A3[, 2:3]))     # unchanged
