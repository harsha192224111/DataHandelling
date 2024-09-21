# Load necessary library
library(ggplot2)

# Create the dataset
month <- c("Jan", "Feb", "Mar", "Apr", "May")
cumulative_sales <- c(100, 200, 300, 400, 500)
data <- data.frame(month, cumulative_sales)

# Create the step plot
ggplot(data, aes(x = month, y = cumulative_sales, group = 1)) +
  geom_step(color = "blue", size = 1) +
  geom_point(color = "red", size = 2) +
  labs(title = "Cumulative Sales Over Months", x = "Month", y = "Cumulative Sales") +
  theme_minimal()
