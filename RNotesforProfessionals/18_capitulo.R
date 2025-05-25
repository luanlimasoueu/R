structure(list(character()), class = "data.frame")

structure(list(a = 1:3, b = letters[1:3]), class = "data.frame", row.names = 1:3)

df1 <- data.frame(x = 1:3, y = c("a", "b", "c"))

df1

bob <- data.frame(jobs = c("scientist", "analyst"),
                  pay = c(160000, 100000), age = c(30, 25))

bob

bob[] <- lapply(bob, as.character)
str(bob)

bob[] <- lapply(bob, function(x) {
  if is.factor(x) x <- as.character(x)
  return(x)
})  