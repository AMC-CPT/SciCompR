xmax = 1020
n1   = Choose(xmax, xmax/2)
n1.r = Choose(xmax - 1, xmax/2) + Choose(xmax - 1, xmax/2 - 1)
n2   = choose(xmax, xmax/2)
n2.r = choose(xmax - 1, xmax/2) + choose(xmax - 1, xmax/2 - 1)

signif(c(Choose = abs(n1 - n1.r)/n1.r,
         choose = abs(n2 - n2.r)/n2.r), 6)
