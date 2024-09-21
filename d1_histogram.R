# Create the dataset
age <- c(25, 30, 35, 40, 45, 50, 55, 60, 65, 70)

# Plot the histogram
hist(age, 
     main = "Age Distribution", 
     xlab = "Age", 
     ylab = "Frequency", 
     col = "lightblue", 
     border = "black")

# Add a grid
grid(nx = NA, ny = NULL) # Only horizontal grid lines
