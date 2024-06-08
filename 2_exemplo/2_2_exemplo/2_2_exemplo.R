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

