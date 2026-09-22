for (tol in c(1e-3, 1e-6, 1e-9)) {
  r = newton(0.7, tol); n = nrow(r)
  cat(sprintf("tol = %5.0e   %d steps   |x - 1| = %8.2e\n",
              tol, n, abs(r[n, "next"] - 1)))
}
