# Load necessary library
library(ggplot2)

# Create the dataset
region <- c("North", "South", "East", "West")
sales <- c(150, 200, 180, 210)
data <- data.frame(region, sales)

# Create the lollipop plot
ggplot(data, aes(x = region, y = sales)) +
  geom_segment(aes(x = region, xend = region, y = 0, yend = sales), color = "skyblue", size = 1) +
  geom_point(color = "blue", size = 4) +
  labs(title = "Sales by Region", x = "Region", y = "Sales") +
  theme_minimal()
