# Two variables
df <- read.table(header=TRUE, text='
 cond yval
    A 2
    B 2.5
    C 1.6
')

# Three variables
df2 <- read.table(header=TRUE, text='
 cond1 cond2 yval
    A      I 2
    A      J 2.5
    A      K 1.6
    B      I 2.2
    B      J 2.4
    B      K 1.2
    C      I 1.7
    C      J 2.3
    C      K 1.9
')

library(ggplot2)

# Default: dark bars
ggplot(df, aes(x=cond, y=yval)) + geom_bar(stat="identity")
# Bars with red outlines
ggplot(df, aes(x=cond, y=yval)) + geom_bar(stat="identity", colour="#FF9999") 
# Red fill, black outlines
ggplot(df, aes(x=cond, y=yval)) + geom_bar(stat="identity", fill="#FF9999", colour="black")

ggplot(df, aes(x=cond, y=yval)) + 
  geom_line(aes(group=1)) +     # Group all points; otherwise no line will show
  geom_point(size=3)
# Dark blue lines, red dots
ggplot(df, aes(x=cond, y=yval)) + 
  geom_line(aes(group=1), colour="#000099") +  # Blue lines
  geom_point(size=3, colour="#CC0000")   


# Bars: x and fill both depend on cond2
ggplot(df, aes(x=cond, y=yval, fill=cond)) + geom_bar(stat="identity")

# Bars with other dataset; fill depends on cond2
ggplot(df2, aes(x=cond1, y=yval)) + 
  geom_bar(aes(fill=cond2),   # fill depends on cond2
           stat="identity",
           colour="black",    # Black outline for all
           position=position_dodge()) # Put bars side-by-side instead of stacked

# Lines and points; colour depends on cond2
ggplot(df2, aes(x=cond1, y=yval)) + 
  geom_line(aes(colour=cond2, group=cond2)) + # colour, group both depend on cond2
  geom_point(aes(colour=cond2),               # colour depends on cond2
             size=3)  

# The palette with grey:
cbPalette <- c("#999999", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

# The palette with black:
cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

# To use for fills, add
scale_fill_manual(values=cbPalette)

# To use for line and point colors, add
scale_colour_manual(values=cbPalette)

