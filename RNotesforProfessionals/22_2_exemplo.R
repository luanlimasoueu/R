plot(mpg ~ wt, data = mtcars, col=2)

fit <- lm(mpg ~ wt, data = mtcars)
fit

summary(fit)


bs <- round(coef(fit), 3)
bs

lmlab <- paste0("mpg = ", bs[1],
                ifelse(sign(bs[2])==1, " + ", " - "), abs(bs[2]), " wt ")

mtext(lmlab, 3, line=-2)

plot(mtcars[,c("mpg","disp","wt")])

library(p3d)

Init3d(family="serif", cex = 1)
Plot3d(mpg ~ disp+wt, mtcars)
Axes3d()
Fit3d(fit1)
