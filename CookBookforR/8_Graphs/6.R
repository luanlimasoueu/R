library(ggplot2)

bp <- ggplot(PlantGrowth, aes(x=group, y=weight)) +
  geom_boxplot()
bp

bp + coord_flip()


# Manually set the order of a discrete-valued axis
bp + scale_x_discrete(limits=c("trt1","trt2","ctrl"))

# Reverse the order of a discrete-valued axis
# Get the levels of the factor
flevels <- levels(PlantGrowth$group)
flevels
#> [1] "ctrl" "trt1" "trt2"

# Reverse the order
flevels <- rev(flevels)
flevels
#> [1] "trt2" "trt1" "ctrl"

bp + scale_x_discrete(limits=flevels)

# Or it can be done in one line:
bp + scale_x_discrete(limits = rev(levels(PlantGrowth$group)))

bp + scale_x_discrete(breaks=c("ctrl", "trt1", "trt2"),
                      labels=c("Control", "Treat 1", "Treat 2"))


# Hide x tick marks, labels, and grid lines
bp + scale_x_discrete(breaks=NULL)

# Hide all tick marks and labels (on X axis), but keep the gridlines
bp + theme(axis.ticks = element_blank(), axis.text.x = element_blank())


# Create some noisy exponentially-distributed data
set.seed(201)
n <- 100
dat <- data.frame(
  xval = (1:n+rnorm(n,sd=5))/20,
  yval = 2*2^((1:n+rnorm(n,sd=5))/20)
)

# A scatterplot with regular (linear) axis scaling
sp <- ggplot(dat, aes(xval, yval)) + geom_point()
sp

# log2 scaling of the y axis (with visually-equal spacing)
library(scales)     # Need the scales package
sp + scale_y_continuous(trans=log2_trans())

# log2 coordinate transformation (with visually-diminishing spacing)
sp + coord_trans(y="log2")

