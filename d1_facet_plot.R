# Load the ggplot2 package
library(ggplot2)

# Create the dataset
month <- c("Jan", "Jan", "Feb", "Feb", "Mar", "Mar")
region <- c("East", "West", "East", "West", "East", "West")
sales <- c(200, 150, 220, 170, 210, 160)

# Create a data frame
data <- data.frame(Month = month, Region = region, Sales = sales)

# Plot the facet plot
ggplot(data, aes(x = Month, y = Sales, fill = Region)) +
  geom_bar(stat = "identity", position = "dodge") +
  facet_wrap(~ Region) +
  labs(title = "Sales by Month and Region", x = "Month", y = "Sales") +
  theme_minimal()
