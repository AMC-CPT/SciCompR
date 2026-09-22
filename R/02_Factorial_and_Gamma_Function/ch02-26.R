first.inf = function(f) {
  for (i in 100:10000) if (f(i*2, i) == Inf) return(i)
  NA
}
c(Choose = first.inf(Choose), choose = first.inf(choose))
