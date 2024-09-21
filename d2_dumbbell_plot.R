# Load necessary libraries
library(ggplot2)
library(ggalt)

# Create the dataset
product <- c("A", "B", "C", "D", "E")
before_campaign <- c(200, 300, 400, 500, 600)
after_campaign <- c(250, 350, 450, 550, 650)
data <- data.frame(product, before_campaign, after_campaign)

# Create the dumbbell plot
ggplot(data, aes(x = before_campaign, xend = after_campaign, y = product)) +
  geom_dumbbell(color = "grey", size = 1.5,
                point.colour.l = "blue", point.colour.r = "red") +
  labs(title = "Sales Before and After Campaign",
       x = "Sales", y = "Product") +
  theme_minimal()
