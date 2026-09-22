naiveFactorial.a(0)                  # 0! = 1 이어야 한다
tryCatch(betterFactorial.a(1), error = function(e) conditionMessage(e))
1:0                                  # 빈 벡터가 아니다
seq_len(0)                           # 이것이 빈 벡터다
