"y ~ x1 + x2"



as.formula("y ~ x1 + x2")

measurevar <- "y"
groupvars  <- c("x1","x2","x3")

paste(measurevar, paste(groupvars, collapse=" + "), sep=" ~ ")

as.formula(paste(measurevar, paste(groupvars, collapse=" + "), sep=" ~ ")
           