a = c(2, 3, 1); b = c(1, 0, 1)
crossprod(a, b)       # a' b : 1 x 1
a %o% b               # a b' : 3 x 3, outer(a, b) 와 같다
b %o% a
