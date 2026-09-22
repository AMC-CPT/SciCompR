x = 1:3
c(x[3], `[`(x, 3), do.call("[", list(x, 3)))
