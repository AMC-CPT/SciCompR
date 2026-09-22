run.p = function(m, n, r) {
  if (m == 0 & r == 1) return(1)
  if (m > n | m < 1 | n < 1 | r < 2 | (r > min(m + n, 2 * m + 1))) return(0)
  sumfu = 0
  for (u in 2:r) {
    if (u %% 2 == 0) {
      k = u / 2; fu = 2 * choose(m - 1, k - 1) * choose(n - 1, k - 1)
    } else {
      k = (u + 1) / 2
      fu = choose(m - 1, k - 1) * choose(n - 1, k - 2) +
           choose(m - 1, k - 2) * choose(n - 1, k - 1)
    }
    sumfu = sumfu + fu
  }
  return(sumfu / choose(m + n, m))
}
