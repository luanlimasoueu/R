library(reshape2)
# Look at first few rows
head(tips)

library(ggplot2)
sp <- ggplot(tips, aes(x=total_bill, y=tip/total_bill)) + geom_point(shape=1)
sp


sp + facet_grid(sex ~ .)

sp + facet_grid(. ~ sex)
