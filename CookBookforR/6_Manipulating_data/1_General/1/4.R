
set.seed(158)
x <- round(rnorm(20, 10, 5))
x

duplicated(x)



x[duplicated(x)]


# Duplicated entries, without repeats
unique(x[duplicated(x)])


# The original vector with all duplicates removed. These do the same:
unique(x)

x[!duplicated(x)]

df <- read.table(header=TRUE, text='
 label value
     A     4
     B     3
     C     6
     B     3
     B     1
     A     2
     A     4
     A     4
')

df

duplicated(df)

df[duplicated(df),]

unique(df[duplicated(df),])

unique(df)

df[!duplicated(df),]



