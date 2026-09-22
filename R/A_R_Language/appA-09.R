myFunc = function(x, y = 1, ...) {
  cat("extra:", length(list(...)), "\n")
  x + y
}
c(myFunc(3), myFunc(3, 2), myFunc(y = 2, x = 3), myFunc(3, 2, "a", "b"))

MakeCounter = function() {
  count = 0
  function() {
    count <<- count + 1     # 바깥 환경의 count 를 고친다
    count
  }
}
counter = MakeCounter()
c(counter(), counter(), counter())
