data <- read.table(header=TRUE, text='
    id weight   size
     1     20  small
     2     27  large
     3     24 medium
')

data

data[c(1,3,2)]

data[c("size", "id", "weight")]

data[, c(1,3,2)]

data[2]

data[,2]

data[, 2, drop=FALSE]
