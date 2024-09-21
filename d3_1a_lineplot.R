# Load necessary library
library(ggplot2)

# Create the data frame
weather_data <- data.frame(
  Date = as.Date(c('2023-01-01', '2023-01-02', '2023-01-03', '2023-01-04', '2023-01-05')),
  Temperature = c(10, 12, 8, 15, 14),
  Humidity = c(75, 70, 80, 65, 72),
  WindSpeed = c(15, 12, 18, 20, 16)
)

# Plot Temperature vs Humidity
ggplot(weather_data, aes(x = Humidity, y = Temperature)) +
  geom_point(color = 'blue') +
  geom_line(color = 'blue') +
  labs(title = 'Temperature vs Humidity', x = 'Humidity (%)', y = 'Temperature (°C)') +
  theme_minimal()

# Plot Temperature vs Wind Speed
ggplot(weather_data, aes(x = WindSpeed, y = Temperature)) +
  geom_point(color = 'red') +
  geom_line(color = 'red') +
  labs(title = 'Temperature vs Wind Speed', x = 'Wind Speed (km/h)', y = 'Temperature (°C)') +
  theme_minimal()

# Print the data frame
print(weather_data)

