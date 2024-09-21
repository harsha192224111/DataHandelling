# Create the dataset
year <- c(2010, 2011, 2012, 2013, 2014)
population <- c(1000, 1020, 1040, 1060, 1080)

# Plot the line plot
plot(year, population, 
     type = "o", # 'o' for both lines and points
     main = "Population Growth Over Years", 
     xlab = "Year", 
     ylab = "Population (millions)", 
     pch = 19, # Solid circle for points
     col = "blue",
     lwd = 2) # Line width

# Add a grid
grid()

