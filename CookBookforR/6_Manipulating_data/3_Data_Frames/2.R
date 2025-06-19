data <- read.table(header=TRUE, text='
 id weight
  1     20
  2     27
  3     24
')

data

data$size      <- c("small", "large", "medium")
data[["size"]] <- c("small", "large", "medium")
data[,"size"]  <- c("small", "large", "medium")
data$size      <- 0 

data$size      <- NULL
data[["size"]] <- NULL
data[,"size"]  <- NULL
data[[3]]      <- NULL
data[,3]       <- NULL
data           <- subset(data, select=-size)
