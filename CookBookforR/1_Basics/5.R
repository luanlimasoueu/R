x <- NULL
x > 5



y <- NA
y > 5



z <- NaN
z > 5

is.null(x)


is.na(y)


is.nan(z)

is.null(y)


is.na(x)

vy <- c(1, 2, 3, NA, 5)

mean(vy)

mean(vy, na.rm=TRUE)



vz <- c(1, 2, 3, NaN, 5)

sum(vz)

sum(vz, na.rm=TRUE)
# 11


# NULL isn't a problem, because it doesn't exist
vx <- c(1, 2, 3, NULL, 5)
# 1 2 3 5
sum(vx)
# 11


vy
# 1  2  3 NA  5
vy[ !is.na(vy) ]
# 1  2  3  5

vz
# 1   2   3 NaN   5
vz[ !is.nan(vz) ]
# 1  2  3  5
\
