x <- factor(c("alpha","beta","gamma","alpha","beta"))
x

levels(x)

library(plyr)
revalue(x, c("beta"="two", "gamma"="three"))

levels(x)[levels(x)=="beta"] <- "two"

levels(x)[3] <- "three"
x

levels(x) <- c("one","two","three")
x

x <- factor(c("alpha","beta","gamma","alpha","beta"))
levels(x) <- list(A="alpha", B="beta", C="gamma")
x

x <- factor(c("alpha","beta","gamma","alpha","beta"))
x            