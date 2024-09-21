# Load necessary libraries
library(plotly)


# Create the data frame
financial_data <- data.frame(
  Date = as.Date(c('2023-01-01', '2023-01-02', '2023-01-03', '2023-01-04', '2023-01-05')),
  StockPrice = c(100, 102, 98, 105, 108),
  VolumeTraded = c(2.5, 3.0, 2.2, 2.8, 3.5),
  MarketCap = c(500, 510, 490, 525, 540)
)


# Create a 3D scatter plot
plot_ly(financial_data, x = ~VolumeTraded, y = ~MarketCap, z = ~StockPrice, type = 'scatter3d', mode = 'markers') %>%
  layout(
    title = '3D Scatter Plot of Stock Price, Volume Traded, and Market Cap',
    scene = list(
      xaxis = list(title = 'Volume Traded (millions)'),
      yaxis = list(title = 'Market Cap ($)'),
      zaxis = list(title = 'Stock Price ($)')
    )
  )
