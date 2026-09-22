for (i in 1:10) {
  if (i == 5) next      # 이번 회차를 버린다
  if (i == 8) break     # 반복을 벗어난다
  cat(i, "")
}
cat("\n")
i = 1
while (i <= 5) { cat(i, ""); i = i + 1 }
cat("\n")
i = 1
repeat { if (i > 5) break; cat(i, ""); i = i + 1 }
cat("\n")

Grade = function(s) switch(s, A = 4, B = 3, C = 2, 0)   # 끝의 0 은 기본값
sapply(c("A", "B", "C", "Z"), Grade)
ifelse(c(-2, 0, 3) > 0, "plus", "not plus")
