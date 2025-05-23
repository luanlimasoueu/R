l1 <- list(c(1, 2, 3), c("a", "b", "c"))

l1

names(l1)

names(l1) <- c("vector1", "vector2")

l2 <- list(vec = c(1, 3, 5, 7, 9),
           mat = matrix(data = c(1, 2, 3), nrow = 3))
l2

exampleList1 <- list('a', 'b')
exampleList2 <- list(1, 2)
exampleList3 <- list('a', 1, 2)

exampleList1

str(exampleList1)
str(exampleList2)
str(exampleList3)

str(exampleList2)

exampleList3[1]
exampleList3[1:2]

exampleList4 <- list(
  num = 1:3,
  numeric = 0.5,
  char = c('a', 'b')
)

exampleList4 

exampleList4[['char']]

exampleList4$num

exampleList5 <- exampleList4[2:3]
exampleList4$num
# c(1, 2, 3)
exampleList5$num
# 0.5
exampleList5[['num']]

exampleVector1 <- c(12, 13, 14)
## Character vector
exampleVector2 <- c("a", "b", "c", "d", "e", "f")
## Matrix
exampleMatrix1 <- matrix(rnorm(4), ncol = 2, nrow = 2)
## List
exampleList3 <- list('a', 1, 2)
exampleList6 <- list(
  num = exampleVector1,
  char = exampleVector2,
  mat = exampleMatrix1,
  list = exampleList3
)
exampleList6







