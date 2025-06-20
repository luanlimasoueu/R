set.seed(1234)
dat <- data.frame(cond = factor(rep(c("A","B"), each=200)), 
                  rating = c(rnorm(200),rnorm(200, mean=.8)))
# View first few rows
head(dat)

## Basic histogram from the vector "rating". Each bin is .5 wide.
## These both result in the same output:
ggplot(dat, aes(x=rating)) + geom_histogram(binwidth=.5)
# qplot(dat$rating, binwidth=.5)

# Draw with black outline, white fill
ggplot(dat, aes(x=rating)) +
  geom_histogram(binwidth=.5, colour="black", fill="white")

# Density curve
ggplot(dat, aes(x=rating)) + geom_density()

# Histogram overlaid with kernel density curve
ggplot(dat, aes(x=rating)) + 
  geom_histogram(aes(y=..density..),      # Histogram with density instead of count on y-axis
                 binwidth=.5,
                 colour="black", fill="white") +
  geom_density(alpha=.2, fill="#FF6666")  # Overlay with transparent density plo

ggplot(dat, aes(x=rating)) +
  geom_histogram(binwidth=.5, colour="black", fill="white") +
  geom_vline(aes(xintercept=mean(rating, na.rm=T)),   # Ignore NA values for mean
             color="red", linetype="dashed", size=1)

# Overlaid histograms
ggplot(dat, aes(x=rating, fill=cond)) +
  geom_histogram(binwidth=.5, alpha=.5, position="identity")

# Interleaved histograms
ggplot(dat, aes(x=rating, fill=cond)) +
  geom_histogram(binwidth=.5, position="dodge")

# Density plots
ggplot(dat, aes(x=rating, colour=cond)) + geom_density()

# Density plots with semi-transparent fill
ggplot(dat, aes(x=rating, fill=cond)) + geom_density(alpha=.3)


ggplot(dat, aes(x=rating)) + geom_histogram(binwidth=.5, colour="black", fill="white") + 
  facet_grid(cond ~ .)

# With mean lines, using cdat from above
ggplot(dat, aes(x=rating)) + geom_histogram(binwidth=.5, colour="black", fill="white") + 
  facet_grid(cond ~ .) +
  geom_vline(data=cdat, aes(xintercept=rating.mean),
             linetype="dashed", size=1, colour="red")



# A basic box plot
ggplot(dat, aes(x=cond, y=rating)) + geom_boxplot()

# A basic box with the conditions colored
ggplot(dat, aes(x=cond, y=rating, fill=cond)) + geom_boxplot()

# The above adds a redundant legend. With the legend removed:
ggplot(dat, aes(x=cond, y=rating, fill=cond)) + geom_boxplot() +
  guides(fill=FALSE)

# With flipped axes
ggplot(dat, aes(x=cond, y=rating, fill=cond)) + geom_boxplot() + 
  guides(fill=FALSE) + coord_flip()


ggplot(dat, aes(x=cond, y=rating)) + geom_boxplot() +
  stat_summary(fun.y=mean, geom="point", shape=5, size=4)

