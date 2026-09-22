naiveFactorial.a = function(x)      # 실무에 쓰지 않는다
{ # x 는 양의 정수여야 한다
  Result = 1
  for (i in 1:x) Result = Result*i
  return(Result)
}

naiveFactorial.b = function(x)      # 실무에 쓰지 않는다
{ # x 는 양의 정수여야 한다
  Result = 1
  for (i in x:1) Result = Result*i
  return(Result)
}
