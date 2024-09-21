# Install and load necessary libraries
install.packages("plotly")
library(plotly)

# Create a data frame with the given financial market data
data <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04", "2023-01-05")),
  Stock_Price = c(100, 102, 98, 105, 108),
  Volume_Traded = c(2.5, 3.0, 2.2, 2.8, 3.5),
  Market_Cap = c(500, 510, 490, 525, 540)
)

# 3D plot: Stock Price vs Volume Traded vs Date
plot1 <- plot_ly(data, x = ~Date, y = ~Stock_Price, z = ~Volume_Traded, type = "scatter3d", mode = "markers",
                 marker = list(size = 5, color = ~Stock_Price, colorscale = 'Viridis', showscale = TRUE)) %>%
  layout(scene = list(xaxis = list(title = 'Date'),
                      yaxis = list(title = 'Stock Price ($)'),
                      zaxis = list(title = 'Volume Traded (millions)')),
         title = "3D Plot of Stock Price vs Volume Traded")

# 3D plot: Stock Price vs Market Cap vs Date
plot2 <- plot_ly(data, x = ~Date, y = ~Stock_Price, z = ~Market_Cap, type = "scatter3d", mode = "markers",
                 marker = list(size = 5, color = ~Stock_Price, colorscale = 'Viridis', showscale = TRUE)) %>%
  layout(scene = list(xaxis = list(title = 'Date'),
                      yaxis = list(title = 'Stock Price ($)'),
                      zaxis = list(title = 'Market Cap ($)')),
         title = "3D Plot of Stock Price vs Market Cap")

# Show plots
plot1
plot2
