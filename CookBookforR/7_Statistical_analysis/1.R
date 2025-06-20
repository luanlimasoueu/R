set.seed(955)
xvar <- 1:20 + rnorm(20,sd=3)
zvar <- 1:20/4 + rnorm(20,sd=2)
yvar <- -2*xvar + xvar*zvar/5 + 3 + rnorm(20,sd=4)

# Make a data frame with the variables
dat <- data.frame(x=xvar, y=yvar, z=zvar)
# Show first few rows
head(dat)

cor(dat$x, dat$y)


cor(dat)

round(cor(dat), 2)

fit <- lm(y ~ x, data=dat)  # Using the columns x and y from the data frame
fit <- lm(dat$y ~ dat$x)     # Using the vectors dat$x and dat$y
fit

summary(fit)


fit2 <- lm(y ~ x + z, data=dat)    # Using the columns x, y, and z from the data frame
fit2 <- lm(dat$y ~ dat$x + dat$z)  # Using the vectors x, y, z
fit2


summary(fit2)

fit3 <- lm(y ~ x * z, data=dat) 
fit3 <- lm(y ~ x + z + x:z, data=dat) 
fit3

summary(fit3)

