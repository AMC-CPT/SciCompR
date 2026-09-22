Z = matrix(c(0, 1, 1, 2), nrow = 2, byrow = TRUE)   # first pivot is zero
gj(cbind(Z, c(1, 3)), verbose = FALSE)

S = matrix(c(1, 2, 2, 4), nrow = 2, byrow = TRUE)   # dependent rows
gj(cbind(S, c(3, 6)), verbose = FALSE)
