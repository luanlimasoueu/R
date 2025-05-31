runif(1)


# Get a vector of 4 numbers
runif(4)


# Get a vector of 3 numbers from 0 to 100
runif(3, min=0, max=100)


# Get 3 integers from 0 to 100
# Use max=101 because it will never actually equal 101
floor(runif(3, min=0, max=101))


# This will do the same thing
sample(1:100, 3, replace=TRUE)


# To generate integers WITHOUT replacement:
sample(1:100, 3, replace=FALSE)


# Use a different mean and standard deviation
rnorm(4, mean=50, sd=10)


# To check that the distribution looks right, make a histogram of the numbers
x <- rnorm(400, mean=50, sd=10)
hist(x)
