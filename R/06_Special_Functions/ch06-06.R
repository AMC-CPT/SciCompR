library(mathr)              # NORM, DENORM, SQRT, LOG, EXP
cat(deparse(NORM), sep = "\n")
cat(deparse(DENORM), sep = "\n")
NORM(10)                    # 가수부와 지수부로 쪼갠다
DENORM(NORM(10))            # 다시 붙인다
