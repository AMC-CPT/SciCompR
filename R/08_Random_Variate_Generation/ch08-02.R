LCGperiod = function(a, k, m, Seed = 1) {
  x = Seed; Seen = NULL
  repeat {
    x = (a*x + k) %% m
    if (x %in% Seen) break
    Seen = c(Seen, x)
  }
  return(length(Seen))
}

c(m16.k3 = LCGperiod(5, 3, 16), m16.k0 = LCGperiod(5, 0, 16),
  m31.k0 = LCGperiod(3, 0, 31), m16.k0.seed2 = LCGperiod(5, 0, 16, 2))
