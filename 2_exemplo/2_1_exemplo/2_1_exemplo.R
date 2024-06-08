library("ggplot2")

gfg_data <- data.frame(x = c(1,2,3,4,5),         
                       y = c(4,3,2,5,1))
gfg_data         

gfg_plot<- ggplot(gfg_data, aes(x, y)) +   
  geom_point()

gfg_plot +  annotate("text", x = 4, y = 3,
                     label = "GeeksForGeeks")



library("ggplot2")

gfg_data <- data.frame(x = c(1,2,3,4,5),         
                       y = c(4,3,2,5,1))
gfg_data 

gfg_plot<- ggplot(gfg_data, aes(x, y)) +   
  geom_point()

gfg_plot +  annotate("text", x = 1.2, y = 5,
                     label = "GeeksForGeeks") + 
  annotate("text", x = 4.7, y = 1, 
           label = "GeeksForGeeks")   


library("ggplot2")

gfg_data <- data.frame(x = c(1,2,3,4,5),         
                       y = c(4,3,2,5,1))

gfg_data         

gfg_plot<- ggplot(gfg_data, aes(x, y)) +   
  geom_point()

gfg_plot +  annotate("text", x = 2, y = 5, 
                     label = "GeeksForGeeks",
                     col = "green", size = 10) +
  annotate("text", x = 4.7, y = 1, 
           label = "GeeksForGeeks",
           col = "green", size = 5)  

