df <- data.frame( a=c(TRUE,TRUE,TRUE,FALSE,FALSE,FALSE,NA,NA,NA),
                  b=c(TRUE,FALSE,NA,TRUE,FALSE,NA,TRUE,FALSE,NA))

df

df$a == df$b

# The same comparison, but presented as another column in the data frame:
data.frame(df, isSame = (df$a==df$b))

compareNA <- function(v1,v2) {
  same <- (v1 == v2) | (is.na(v1) & is.na(v2))
  same[is.na(same)] <- FALSE
  return(same)
}

compareNA(df$a, df$b)

data.frame(df, isSame = compareNA(df$a,df$b))

df1 <- data.frame(a = factor(c('x','x','x','y','y','y', NA, NA, NA)),
                  b = factor(c('x','y', NA,'x','y', NA,'x','y', NA)))

# Do the comparison
data.frame(df1, isSame = compareNA(df1$a, df1$b))

df1$b <- factor(df1$b, levels=c('y','x'))
data.frame(df1, isSame = compareNA(df1$a, df1$b))
