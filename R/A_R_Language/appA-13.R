x = 1/3
print(x)                       # options(digits = 7) 아래의 기본 출력
format(x, digits = 22)         # 배정밀도가 담고 있는 자릿수까지
sprintf("%.10f", x)            # 소수점 아래 10 자리로 못 박는다
cat("x =", x, "\n")            # 따옴표도 대괄호도 없이
paste0("run", 1:3)
