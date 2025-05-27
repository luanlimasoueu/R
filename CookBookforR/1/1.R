v <- c(1,4,4,3,2,2,3)

v

v[c(2,3,4)]

v[2:4]

v[c(2,4,3)]

data <- read.table(header=T, text='
 subject sex size
       1   M    7
       2   F    6
       3   F    9
       4   M   11
 ')

data

data[1,3]

data[1,"size"]

data[1:2, ] 

data[c(1,2), ]

subset(data, subject < 3)

data[data$subject < 3, ]

subset(data, subject < 3, select = -subject)



