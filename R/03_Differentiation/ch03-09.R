x = -5:5
Val = eval(FxDeriv1)
c(Val)                                   # 함숫값. 속성은 떼고 본다
dim(attr(Val, "gradient"))               # 평가점마다 한 행
drop(attr(Val, "gradient"))              # 도함숫값
