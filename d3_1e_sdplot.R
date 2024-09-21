# Load necessary libraries
library(plotly)
library(akima)

# Create the data frame
weather_data <- data.frame(
  Date = as.Date(c('2023-01-01', '2023-01-02', '2023-01-03', '2023-01-04', '2023-01-05')),
  Temperature = c(10, 12, 8, 15, 14),
  Humidity = c(75, 70, 80, 65, 72),
  WindSpeed = c(15, 12, 18, 20, 16)
)

# Interpolate the data to create a grid for Temperature vs Humidity
interp_data_humidity <- with(weather_data, interp(Humidity, WindSpeed, Temperature))

# Create a 3D surface plot for Temperature vs Humidity
plot_humidity <- plot_ly(
  x = interp_data_humidity$x,
  y = interp_data_humidity$y,
  z = interp_data_humidity$z,
  type = 'surface'
) %>%
  layout(
    title = 'Temperature Variation with Humidity and Wind Speed',
    scene = list(
      xaxis = list(title = 'Humidity (%)'),
      yaxis = list(title = 'Wind Speed (km/h)'),
      zaxis = list(title = 'Temperature (°C)')
    )
  )

# Interpolate the data to create a grid for Temperature vs Wind Speed
interp_data_windspeed <- with(weather_data, interp(Humidity, WindSpeed, Temperature, duplicate = "mean"))

# Create a 3D surface plot for Temperature vs Wind Speed
plot_windspeed <- plot_ly(
  x = interp_data_windspeed$x,
  y = interp_data_windspeed$y,
  z = interp_data_windspeed$z,
  type = 'surface'
) %>%
  layout(
    title = 'Temperature Variation with Wind Speed and Humidity',
    scene = list(
      xaxis = list(title = 'Wind Speed (km/h)'),
      yaxis = list(title = 'Humidity (%)'),
      zaxis = list(title = 'Temperature (°C)')
    )
  )

# Display plots
plot_humidity
plot_windspeed

