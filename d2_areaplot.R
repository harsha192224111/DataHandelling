# Load necessary library
library(ggplot2)

# Create the dataset
year <- c(2015, 2016, 2017, 2018, 2019)
revenue <- c(30, 35, 40, 45, 50)
data <- data.frame(year, revenue)

# Create the area plot
ggplot(data, aes(x = year, y = revenue)) +
  geom_area(fill = "skyblue", alpha = 0.5) +
  geom_line(color = "blue", size = 1) +
  geom_point(color = "blue", size = 2) +
  labs(title = "Yearly Revenue", x = "Year", y = "Revenue (in million)") +
  theme_minimal()
