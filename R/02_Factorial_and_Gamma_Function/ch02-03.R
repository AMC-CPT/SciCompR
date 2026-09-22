a = naiveFactorial.a(170); b = naiveFactorial.b(170)
p = prod(1:170);           q = prod(170:1)

cmp = function(x, y)
  c(`==` = x == y, identical = identical(x, y),
    all.equal = isTRUE(all.equal(x, y)))

cbind(`a & b` = cmp(a, b), `p & a` = cmp(p, a),
      `p & b` = cmp(p, b), `p & q` = cmp(p, q))
