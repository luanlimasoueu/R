data <- read.table(header=T, text='
 subject sex control cond1 cond2
       1   M     7.9  12.3  10.7
       2   F     6.3  10.6  11.1
       3   F     9.5  13.1  13.8
       4   M    11.5  13.4  12.9
')

library(plyr)

data$scode <- revalue(data$sex, c("M"="1", "F"="2"))
data

data$scode <- mapvalues(data$sex, from = c("M", "F"), to = c("1", "2"))


data$scode[data$sex=="M"] <- "1"
data$scode[data$sex=="F"] <- "2"

data$scode <- factor(data$scode)
data


oldvalues <- c("M", "F")
newvalues <- factor(c("g1","g2"))  # Make this a factor

data$scode <- newvalues[ match(data$sex, oldvalues) ]
data

data$category[data$control< 7] <- "low"
data$category[data$control>=7] <- "high"

# Convert the column to a factor
data$category <- factor(data$category)
data


data$category <- cut(data$control,
                     breaks=c(-Inf, 7, 9, Inf),
                     labels=c("low","medium","high"))
data

data$total <- data$control + data$cond1 + data$cond2
data


