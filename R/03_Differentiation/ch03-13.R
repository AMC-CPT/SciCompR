tryCatch(deriv(expression(abs(x)), "x"),
         error = function(e) conditionMessage(e))
D(expression(gamma(x)), "x")             # 이쪽은 규칙표에 있다
