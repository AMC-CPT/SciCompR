betterFactorial.a = function(x)
{ # x 는 양의 정수여야 한다
  Result = prod(seq(1, x, 2))*prod(seq(2, x, 2))
  return(Result)
}

prod(1:170) == betterFactorial.a(170)
