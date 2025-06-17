# A sample data frame
data <- read.table(header=TRUE, text='
 subject sex size
       1   M    7
       2   F    NA
       3   F    9
       4   M   11
 ')


# Write to a file, suppress row names
write.csv(data, "data.csv", row.names=FALSE)

# Same, except that instead of "NA", output blank cells
write.csv(data, "data.csv", row.names=FALSE, na="")

# Use tabs, suppress row names and column names
write.table(data, "data.csv", sep="\t", row.names=FALSE, col.names=FALSE) 