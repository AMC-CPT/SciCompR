E = E0 + Index[5]
for (i in Index[2]:Index[1]) {
  a[i] = E %% 2
  E = floor(E/2)
}

M = abs(x)/2^E0
M = M - 1
for (i in Index[3]:Index[4]) {
  a[i] = floor(2 * M)
  M = 2 * M - a[i]
}
