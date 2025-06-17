v <- c(1,4,4,3,2,2,3)

subset(v, v<3)

v[v<3]

t <- c("small", "small", "large", "medium")

subset(t, t!="small")

t[t!="small"]


v[v<3] <- 9

subset(v, v<3) <- 9

v


# A sample data frame
data <- read.table(header=T, text='
 subject sex size
       1   M    7
       2   F    6
       3   F    9
       4   M   11
 ')


subset(data, subject < 3)

data[data$subject < 3, ]


# Subset of particular rows and columns
subset(data, subject < 3, select = -subject)

subset(data, subject < 3, select = c(sex,size))

subset(data, subject < 3, select = sex:size)

data[data$subject < 3, c("sex","size")]



# Logical AND of two conditions
subset(data, subject < 3  &  sex=="M")

data[data$subject < 3  &  data$sex=="M", ]



# Logical OR of two conditions
subset(data, subject < 3  |  sex=="M")

data[data$subject < 3  |  data$sex=="M", ]



# Condition based on transformed data
subset(data, log2(size) > 3 )

data[log2(data$size) > 3, ]



# Subset if elements are in another vector
subset(data, subject %in% c(1,3))

data[data$subject %in% c(1,3), ]
