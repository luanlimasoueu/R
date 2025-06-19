d <- data.frame(alpha=1:3, beta=4:6, gamma=7:9)
d


names(d) 

library(plyr)
rename(d, c("beta"="two", "gamma"="three"))

names(d)[names(d)=="beta"] <- "two"
d

names(d)[3] <- "three"

names(d) <- sub("^alpha$", "one", names(d))
d

names(d) <- gsub("t", "X", names(d))
d
