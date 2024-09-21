# Load necessary libraries
library(ggplot2)
library(hexbin)

# Create the dataset
data <- data.frame(
  x = c(1, 2, 3, 4, 5, 6, 7, 8),
  y = c(2, 3, 4, 5, 6, 7, 8, 9)
)

# Create the hexbin plot
ggplot(data, aes(x = x, y = y)) +
  geom_hex(bins = 5) +
  labs(title = "Hexbin Plot of X and Y Coordinates", x = "X", y = "Y") +
  theme_minimal()
