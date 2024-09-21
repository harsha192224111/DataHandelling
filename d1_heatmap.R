# Load the necessary packages
library(ggplot2)
library(reshape2)

# Create the dataset
month <- c("Jan", "Feb", "Mar", "Apr", "May")
city_a <- c(5, 6, 7, 8, 9)
city_b <- c(10, 11, 12, 13, 14)
city_c <- c(15, 16, 17, 18, 19)

# Create a data frame
data <- data.frame(Month = month, City_A = city_a, City_B = city_b, City_C = city_c)

# Melt the data frame to long format
data_melt <- melt(data, id.vars = "Month")

# Plot the heatmap
ggplot(data_melt, aes(x = Month, y = variable, fill = value)) +
  geom_tile() +
  scale_fill_gradient(low = "lightblue", high = "darkred") +
  labs(title = "Monthly Temperatures Heatmap", x = "Month", y = "City") +
  theme_minimal()
