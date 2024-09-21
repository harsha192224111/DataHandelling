# Load necessary library
library(ggplot2)

# Create the dataset
month <- c("Jan", "Feb", "Mar", "Jan", "Feb", "Mar")
product <- c("A", "A", "A", "B", "B", "B")
sales <- c(100, 150, 130, 120, 140, 160)
data <- data.frame(month, product, sales)

# Create the spaghetti plot
ggplot(data, aes(x = month, y = sales, group = product, color = product)) +
  geom_line(size = 1) +
  geom_point(size = 3) +
  labs(title = "Sales over Time by Product", x = "Month", y = "Sales") +
  theme_minimal()
