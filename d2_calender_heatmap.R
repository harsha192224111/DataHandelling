# Load necessary libraries
library(ggplot2)
library(calendar)

# Create the dataset
data <- data.frame(
  date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04", "2023-01-05")),
  count = c(10, 12, 15, 8, 20)
)

# Create a calendar heatmap
ggplot(data, aes(x = date, y = count)) +
  geom_tile(aes(fill = count), color = "white") +
  scale_fill_gradient(low = "lightblue", high = "darkblue") +
  labs(title = "Daily Activity Count", x = "Date", y = "Activity Count") +
  theme_minimal() +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1),
    axis.text.y = element_blank(),
    axis.title.y = element_blank()
  ) +
  facet_wrap(~format(date, "%Y-%m"), ncol = 1)
