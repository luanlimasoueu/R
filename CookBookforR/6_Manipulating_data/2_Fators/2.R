x <- factor(c("alpha","beta","alpha"), levels=c("alpha","beta","gamma"))
x

x <- factor(x)
x

df <- data.frame(
  x = factor(c("alpha","beta","alpha"), levels=c("alpha","beta","gamma")),
  y = c(5,8,2),
  z = factor(c("red","green","green"), levels=c("red","green","blue"))
)

df

df$x

df$z


df <- droplevels(df)

df

