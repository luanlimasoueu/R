stories <- read.table(header=TRUE, text='
   storyid  title
    1       lions
    2      tigers
    3       bears
')

stories


data <- read.table(header=TRUE, text='
    subject storyid rating
          1       1    6.7
          1       2    4.5
          1       3    3.7
          2       2    3.3
          2       3    4.1
          2       1    5.2
')


merge(stories, data, "storyid")


stories2 <- read.table(header=TRUE, text='
   id       title
    1       lions
    2      tigers
    3       bears
')

merge(x=stories2, y=data, by.x="id", by.y="storyid")

animals <- read.table(header=T, text='
   size type         name
  small  cat         lynx
    big  cat        tiger
  small  dog    chihuahua
    big  dog "great dane"
')

observations <- read.table(header=T, text='
   number  size type
        1   big  cat
        2 small  dog
        3 small  dog
        4   big  dog
')

merge(observations, animals, c("size","type"))

