# Load necessary libraries
library(ggplot2)
library(plotly)

# Create the data frame
weather_data <- data.frame(
  Date = as.Date(c('2023-01-01', '2023-01-02', '2023-01-03', '2023-01-04', '2023-01-05')),
  Temperature = c(10, 12, 8, 15, 14),
  Humidity = c(75, 70, 80, 65, 72),
  WindSpeed = c(15, 12, 18, 20, 16)
)

# Create a 3D scatter plot using plotly
plot <- plot_ly(weather_data, x = ~WindSpeed, y = ~Humidity, z = ~Temperature, type = 'scatter3d', mode = 'markers',
                marker = list(size = 5, color = ~Temperature, colorscale = 'Viridis', showscale = TRUE)) %>%
  layout(title = '3D Scatter Plot of Wind Speed, Humidity, and Temperature',
         scene = list(xaxis = list(title = 'Wind Speed (km/h)'),
                      yaxis = list(title = 'Humidity (%)'),
                      zaxis = list(title = 'Temperature (°C)')))

# Show the plot
plot
