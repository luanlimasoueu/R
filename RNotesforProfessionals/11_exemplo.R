letters

LETTERS[7:9]

letters[c(1,5,3,2,4)]


xl <- list('a' = 5, 'b' = 6, 'c' = 7, 'd' = 8)

xl

x <- 5:8
y <- letters[1:4]
xy <- setNames(x, y)
xy

xy <- 5:8
names(xy) <- letters[1:4]
names(xy)

mydf <- data.frame(let = c('c','a','b','d'))
mydf
