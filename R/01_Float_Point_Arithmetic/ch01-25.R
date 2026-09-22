Next = 1
while (Next > 0) {
  Small = Next
  Next = Next/2
}
format(Small, digits = 22)
format(2^-1074, digits = 22)
format(.Machine$double.xmin, digits = 22)
