# Load necessary libraries
library(ggplot2)
library(ggridges)

# Create the dataset
city <- c(rep("City1", 3), rep("City2", 3))
temperature <- c(20, 21, 19, 22, 23, 24)
data <- data.frame(city, temperature)

# Create the ridgeline plot
ggplot(data, aes(x = temperature, y = city, fill = city)) +
  geom_density_ridges(alpha = 0.7) +
  labs(title = "Temperature Distributions by City", x = "Temperature", y = "City") +
  theme_minimal() +
  theme(legend.position = "none")
