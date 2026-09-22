fx = function(x) x*x                     # 임의의 실수 스칼라 함수
x  = 1                                   # 이 점에서의 도함수
h  = max(1e-4, 1e-4*abs(x))              # 작은 h
a  = numeric(4)

# h 를 반씩 줄여 가며 중심차분 넷을 만든다
for (i in 1:4) a[i] = (fx(x + h/2^i) - fx(x - h/2^i))/(2*h/2^i)

# 차례로 정련한다. i = 1 은 h^2 을, i = 2 는 h^4 을 지운다
for (i in 1:3) for (j in 1:(4 - i))
  a[j] = (a[j+1]*4^i - a[j])/(4^i - 1)
a[1]
