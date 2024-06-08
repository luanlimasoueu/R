make.power <- function(n){
  pow <- function(x){
    x = x^n
  }
  pow
}

cube <- make.power(3)
square <- make.power(2)
print(cube(3))
print(square(3))




g <- function(x){
  a <- 3
  x + a + y
}

# assigning value to y
y <- 3

# print g(2)
print(g(2))