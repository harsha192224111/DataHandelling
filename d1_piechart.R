# Create the dataset
company <- c("A", "B", "C", "D")
market_share <- c(20, 30, 25, 25)

# Plot the pie chart
pie(market_share, 
    labels = company, 
    main = "Market Share by Company", 
    col = c("blue", "green", "coral", "yellow"))

# Add a legend
legend("topright", legend = company, fill = c("blue", "green", "coral", "yellow"))
