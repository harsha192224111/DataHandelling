# Create the dataset
class <- c(rep("A", 4), rep("B", 4))
scores <- c(85, 90, 78, 92, 88, 76, 80, 84)

# Create a data frame
data <- data.frame(Class = class, Scores = scores)

# Plot the box plot
boxplot(Scores ~ Class, data = data,
        main = "Exam Scores by Class",
        xlab = "Class",
        ylab = "Scores",
        col = c("skyblue", "lightgreen"))

# Add a grid
grid(nx = NA, ny = NULL) # Only horizontal grid lines
