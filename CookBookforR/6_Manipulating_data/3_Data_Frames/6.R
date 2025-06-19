d <- read.csv(header = TRUE, text='
x,y,value
a,one,1
,,5
b,two,4
c,three,10
')

d

d <- d[-2,]
d
