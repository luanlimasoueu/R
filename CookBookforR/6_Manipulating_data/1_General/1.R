# Make up a randomly ordered vector
v <- sample(101:110)

# Sort the vector
sort(v)
#>  [1] 101 102 103 104 105 106 107 108 109 110

# Reverse sort
sort(v, decreasing=TRUE)

df <- data.frame (id=1:4,
weight=c(20,27,24,22),
size=c("small", "large", "medium", "large"))

df

library(plyr)

df[ order(df$weight), ] 

     
df[ order(df$size, df$weight), ] 

df[ do.call(order, as.list(df)), ]


