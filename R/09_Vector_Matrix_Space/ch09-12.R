library(mathr)
a = c(1, 2, 3); b = c(4, 5, 6)
z = OuterProd(a, b)              # 이름과 달리 벡터곱을 계산한다
z
sqrt(sum(z * z)) / 2             # 삼각형의 넓이
sum(z * a); sum(z * b)           # a, b 와 모두 직교한다
