set.seed(7)
sample(1:10, 4)                             # 복원 없이 넷
sample(c("a", "b", "c"))                    # 전체를 섞으면 무작위 순열
sample(c(0, 1), 8, replace = TRUE, prob = c(0.2, 0.8))
