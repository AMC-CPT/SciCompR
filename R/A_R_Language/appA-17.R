x = 1:6
rbind(square = x^2, cumsum = cumsum(x), recycle = x + c(10, 20))
m = matrix(1:12, nrow = 3)
c(rows = apply(m, 1, sum), cols = apply(m, 2, mean))
vapply(1:3, function(n) n/2, numeric(1))   # 실수 한 개씩임을 못 박는다
Reduce("+", 1:10)                          # 왼쪽부터 둘씩 더해 나간다
Filter(function(z) z %% 2 == 0, 1:10)
