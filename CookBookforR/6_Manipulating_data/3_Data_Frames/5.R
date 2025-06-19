dfA <- data.frame(Subject=c(1,1,2,2), Response=c("X","X","X","X"))
dfA

dfB <- data.frame(Subject=c(1,2,3), Response=c("X","Y","X"))
dfB

dfC <- data.frame(Subject=c(1,2,3), Response=c("Z","Y","Z"))
dfC

dfA$Coder <- "A"
dfB$Coder <- "B"
dfC$Coder <- "C"

df <- rbind(dfA, dfB, dfC)                    # Stick them together
df <- df[,c("Coder", "Subject", "Response")]  # Reorder the columns to look nice
df
