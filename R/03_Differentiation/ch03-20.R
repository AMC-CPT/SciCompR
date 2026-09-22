library(mathr)

fx0 = function(x) sum(x*x)
Deriv0(fx0, 1)                           # 스칼라 도함수, 표를 남긴다
Deriv1(fx0, 1)                           # 같은 값, 제자리에서 계산
Deriv2(fx0, c(1, 1))                     # 다변수 함수의 기울기벡터
Grad(fx0, 1:3)
Hessian(fx0, c(1, 1))
