# Create the dataset
weight <- c(60, 65, 70, 72, 75)
height <- c(170, 175, 168, 180, 178)

# Plot the scatter plot
plot(weight, height, 
     main = "Scatter Plot of Weight vs Height", 
     xlab = "Weight (kg)", 
     ylab = "Height (cm)", 
     pch = 19, # Solid circle
     col = "blue")

# Add a grid
grid()
