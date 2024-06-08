#Exemplo
library(ggplot2)

data <- data.frame(
  fruit = c("Apple", "Banana", "Orange", "Mango"),
  quantity = c(300, 450, 280, 800),
  color = c("red", "yellow", "orange", "green")
)
bar_chart <- ggplot(data, aes(x = fruit, 
                              y = quantity,
                              fill = fruit,
                              color = fruit)) +
  geom_bar(stat = "identity") +
  labs(title = "Fruit Quantity Chart", 
       x = "Fruit", y = "Quantity (in units)") +
  scale_fill_manual(values = data$color) + 
  scale_color_manual(values = data$color) + 
  theme_minimal()
bar_chart


#Exemplo
library(ggplot2)

data <- data.frame(
  category = rep(c("Category 1", "Category 2", "Category 3"), each = 100),
  value = c(rnorm(100, mean = 0, sd = 1),
            rnorm(100, mean = 2, sd = 1.5),
            rnorm(100, mean = -1, sd = 0.5))
)

violin_plot <- ggplot(data, aes(x = category, y = value)) +
  geom_violin(fill = "lightblue", color = "black") +
  labs(title = "Violin Plot", x = "Category", y = "Value") +
  theme_minimal()

print(violin_plot)


#Exemplo
library(ggplot2)

# Load mtcars dataset
data(mtcars)

# Select the variable for the density plot
data <- mtcars$mpg

# Create the density plot
density_plot <- ggplot() +
  geom_density(aes(x = data), fill = "lightblue", color = "black") +
  labs(title = "Density Plot of MPG", x = "MPG", y = "Density") +
  theme_minimal()

print(density_plot)

#Exemplo
library(ggplot2)

data <- data.frame(categories = c("Mango", "Apple", "Orange"),
                   values = c(520, 358, 405))
pie_chart <- ggplot(data, aes(x = "", y = values, fill = categories)) + 
  geom_bar(width = 1, stat = "identity") + 
  coord_polar("y", start = 0) + 
  labs(title = "Sybudheen Shop", x = "Fruits", y = "total") + 
  theme_void()
pie_chart


#Exemplo

# creating data frame
fruits <- c(rep("Apple", 3), rep("Mango", 3),
            rep("Banana", 3), rep("Orange", 3))
quantity <- sample.int(50, 12)

Shop <- rep(c('A', 'B', 'C'),4)

data <- data.frame(fruits, Shop, quantity)

# plotting graph
ggplot(data, aes(fill = Shop, y = quantity, x = fruits))+
  geom_bar(position = "stack", stat = "identity")+
  ggtitle("Different fruit sells in different shops")+
  theme(plot.title = element_text(hjust = 0.5))


#Exemplo
trains <- c(10, 20, 30, 40, 50, 34, 23, 49, 21, 13)
passengers <- c(100, 200, 300, 400, 500, 
                229, 346, 432, 198, 235)

plot(trains, passengers,
     xlab = "Number of Trains", 
     ylab = "Number of Passengers", 
     main = "Scatter Plot of Trains vs Passengers")
abline(lm(passengers~trains), col = "red")


#Exemplo
x <- rnorm(2000)
hist(x, main = "Frequency Plot", 
     xlab = "Values", 
     ylab = "Frequency", 
     col = "gray",
     border = "black")


