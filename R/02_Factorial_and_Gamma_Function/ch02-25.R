Tol = 1e-14
CntChoose = 0; Cntchoose = 0
for (i in 2:100) for (j in 1:i) {
  n0 = prod((i - j + 1):i)/prod(1:j)
  if (abs(Choose(i, j) - n0)/n0 > Tol) CntChoose = CntChoose + 1
  if (abs(choose(i, j) - n0)/n0 > Tol) Cntchoose = Cntchoose + 1
}
c(Choose = CntChoose, choose = Cntchoose)
