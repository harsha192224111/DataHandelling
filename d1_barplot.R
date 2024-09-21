# Create the dataset
product <- c("A", "B", "C", "D", "E")
sales <- c(300, 450, 500, 350, 400)

# Plot the bar plot
barplot(sales, 
        names.arg = product, 
        main = "Sales by Product", 
        xlab = "Product", 
        ylab = "Sales", 
        col = "lightblue",
        ylim = c(0, 600)) # Set the y-axis limit

# Add a grid
grid(nx = NA, ny = NULL) # Only horizontal grid lines
