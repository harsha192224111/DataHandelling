# Load necessary libraries
library(ggplot2)
library(GGally)

# Create the data frame
weather_data <- data.frame(
  Date = as.Date(c('2023-01-01', '2023-01-02', '2023-01-03', '2023-01-04', '2023-01-05')),
  Temperature = c(10, 12, 8, 15, 14),
  Humidity = c(75, 70, 80, 65, 72),
  WindSpeed = c(15, 12, 18, 20, 16)
)

# Plot pairwise relationships
ggpairs(weather_data[, -1], title = "Pairwise Relationships between Temperature, Humidity, and Wind Speed")

# Calculate correlation matrix
cor_matrix <- cor(weather_data[, -1])
print(cor_matrix)
