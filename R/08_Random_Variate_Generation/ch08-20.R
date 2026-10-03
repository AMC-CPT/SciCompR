d1 = read.csv("data/2018KoCancerCases.csv", as.is = TRUE)
d2 = read.csv("data/2017KoBody.csv", as.is = TRUE)

# the five site columns must add up to Case
all(with(d1, Hodgkin + NonHL + MM + Leukemia + Solid) == d1$Case)

# BMI must equal Weight over Height squared
sum(abs(d2$Weight/(d2$Height/100)^2 - d2$BMI) > 0.06)
