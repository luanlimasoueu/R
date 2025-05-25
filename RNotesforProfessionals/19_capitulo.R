(spl <- split(mtcars, mtcars$cyl))

mtcars$cyl

data(iris)

liris <- split(iris, iris$Species)

liris

head(liris$setosa)

(lcor <- lapply(liris, FUN=function(df) cor(df[,1:4])))
