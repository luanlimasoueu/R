str <- c("alpha", "beta", "gamma")
num <- c(1, 2, 3)

library(plyr)
revalue(str, c("beta"="two", "gamma"="three"))


mapvalues(str, from = c("beta", "gamma"), to = c("two", "three"))

str[str=="beta"] <- "two"
str

num[num==2] <- 5
num

str <- c("alpha", "beta", "gamma")

sub("^alpha$", "one", str)

gsub("a", "X", str)
