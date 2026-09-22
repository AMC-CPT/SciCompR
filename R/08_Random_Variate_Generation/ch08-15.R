par(mfrow = c(1, 3), mar = c(3.2, 3.4, 1.6, 0.6), mgp = c(2.1, 0.7, 0))
ellipse(asp = 1, main = "default")
ellipse(c(0, 0), c(3, 2), pi/4, asp = 1, main = "(1)")
ellipse(c(1, 1), c(2, 3), pi/4, asp = 1, main = "(2)")
