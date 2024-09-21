# Load the ggplot2 package
library(ggplot2)

# Create the dataset
group <- c(rep("X", 4), rep("Y", 4))
score <- c(80, 85, 78, 92, 88, 76, 80, 84)

# Create a data frame
data <- data.frame(Group = group, Score = score)

# Plot the violin plot
ggplot(data, aes(x = Group, y = Score, fill = Group)) +
  geom_violin(trim = FALSE) +
  geom_jitter(shape = 16, position = position_jitter(0.2)) +
  labs(title = "Violin Plot of Scores by Group", x = "Group", y = "Score") +
  theme_minimal()
