# Load necessary library
library(ggplot2)
library(gridExtra)

# Create the data frame
financial_data <- data.frame(
  Date = as.Date(c('2023-01-01', '2023-01-02', '2023-01-03', '2023-01-04', '2023-01-05')),
  StockPrice = c(100, 102, 98, 105, 108),
  VolumeTraded = c(2.5, 3.0, 2.2, 2.8, 3.5),
  MarketCap = c(500, 510, 490, 525, 540)
)

# Create box plots
plot_stock_price <- ggplot(financial_data, aes(y = StockPrice)) +
  geom_boxplot() +
  ggtitle("Box Plot of Stock Price") +
  ylab("Stock Price ($)") +
  theme_minimal()

plot_volume_traded <- ggplot(financial_data, aes(y = VolumeTraded)) +
  geom_boxplot() +
  ggtitle("Box Plot of Volume Traded") +
  ylab("Volume Traded (millions)") +
  theme_minimal()

plot_market_cap <- ggplot(financial_data, aes(y = MarketCap)) +
  geom_boxplot() +
  ggtitle("Box Plot of Market Cap") +
  ylab("Market Cap ($)") +
  theme_minimal()

# Arrange plots in a grid
grid.arrange(plot_stock_price, plot_volume_traded, plot_market_cap, ncol = 3)
