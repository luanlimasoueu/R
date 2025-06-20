# Some sample data
dat <- read.table(header=TRUE, text='
     cond result
  control     10
treatment   11.5
')

library(ggplot2)

# Basic bar plot
bp <- ggplot(dat, aes(x=cond, y=result)) +
  geom_bar(position=position_dodge(), stat="identity")
bp

# Add a horizontal line
bp + geom_hline(aes(yintercept=12))

# Make the line red and dashed
bp + geom_hline(aes(yintercept=12), colour="#990000", linetype="dashed")


dat$hline <- c(9,12)
dat


bp <- ggplot(dat, aes(x=cond, y=result)) +
  geom_bar(position=position_dodge(), stat="identity")

# Draw with separate lines for each bar
bp + geom_errorbar(aes(ymax=hline, ymin=hline), colour="#AA0000")

# Make the lines narrower
bp + geom_errorbar(width=0.5, aes(ymax=hline, ymin=hline), colour="#AA0000")


# Can get the same result, even if we get the hline values from a second data frame
# Define data frame with hline
dat_hlines <- data.frame(cond=c("control","treatment"), hline=c(9,12))
dat_hlines
#>        cond hline
#> 1   control     9
#> 2 treatment    12

# The bars are from dat, but the lines are from dat_hlines
bp + geom_errorbar(data=dat_hlines, aes(y=NULL, ymax=hline, ymin=hline), colour="#AA0000")


dat <- read.table(header=TRUE, text='
      cond xval yval
   control 11.5 10.8
   control  9.3 12.9
   control  8.0  9.9
   control 11.5 10.1
   control  8.6  8.3
   control  9.9  9.5
   control  8.8  8.7
   control 11.7 10.1
   control  9.7  9.3
   control  9.8 12.0
 treatment 10.4 10.6
 treatment 12.1  8.6
 treatment 11.2 11.0
 treatment 10.0  8.8
 treatment 12.9  9.5
 treatment  9.1 10.0
 treatment 13.4  9.6
 treatment 11.6  9.8
 treatment 11.5  9.8
 treatment 12.0 10.6
')

library(ggplot2)

# The basic scatterplot
sp <- ggplot(dat, aes(x=xval, y=yval, colour=cond)) + geom_point()

# Add a horizontal line
sp + geom_hline(aes(yintercept=10))

# Add a red dashed vertical line
sp + geom_hline(aes(yintercept=10)) +
  geom_vline(aes(xintercept=11.5), colour="#BB0000", linetype="dashed")

library(dplyr)
lines <- dat %>%
  group_by(cond) %>%
  summarise(
    x = mean(xval),
    ymin = min(yval),
    ymax = max(yval)
  )

# Add colored lines for the mean xval of each group
sp + geom_hline(aes(yintercept=10)) +
  geom_linerange(aes(x=x, y=NULL, ymin=ymin, ymax=ymax), data=lines)


