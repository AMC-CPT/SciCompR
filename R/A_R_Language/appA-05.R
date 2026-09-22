L = list(name = "Alice", age = 30L, scores = c(95, 87))
f = factor(c("low", "high", "mid"), levels = c("low", "mid", "high"))
str(L)
as.integer(f)                        # 속은 정수, 겉은 수준의 이름
v = 1:6
attr(v, "dim") = c(2, 3)             # 이 한 줄로 벡터가 행렬이 된다
dimnames(v) = list(c("a", "b"), c("x", "y", "z"))
v
