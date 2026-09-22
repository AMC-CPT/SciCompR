uniroot(fdy, c(0.5, 1.5))$root       # 부호가 바뀌므로 반드시 찾는다
uniroot(fdy, c(1.5, 2.5))$root       # 뉴턴법이 1.6 에서 놓쳤던 근
.Machine$double.eps^0.25             # uniroot 의 기본 허용오차
uniroot(fdy, c(1.5, 2.5), tol = 1e-12)$root
