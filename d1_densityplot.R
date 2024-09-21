# Create the dataset
weights <- c(60, 65, 70, 75, 80, 85, 90, 95, 100)

# Plot the density plot
plot(density(weights), 
     main = "Density Plot of Weights", 
     xlab = "Weight (kg)", 
     ylab = "Density", 
     col = "blue", 
     lwd = 2)

# Add a grid
grid(nx = NULL, ny = NULL)
