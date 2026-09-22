q = 9
c(subtract = 1 - pnorm(q), upper = pnorm(q, lower.tail = FALSE),
  logupper = pnorm(q, lower.tail = FALSE, log.p = TRUE))
c(density = dunif(0.05, 0, 0.1), integral = punif(0.1, 0, 0.1))
