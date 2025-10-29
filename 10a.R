set.seed(20)
x <- rnorm(100, mean = 5, sd = 2)
y <- 2 * x + rnorm(100, mean = 0, sd = 3)

# Save old par settings and set new 2x3 layout
old_par <- par(mfrow = c(2, 3))

# Histogram
hist(x, main = "Histogram", xlab = "Values", col = "skyblue", border = "black")

# Scatter Plot
plot(x, y, main = "Scatter Plot", xlab = "X Variable", ylab = "Y Variable", pch = 16, col = "red")

# Line Chart
a <- c(2, 5, 7, 4, 8, 9)
b <- c(3, 4, 6, 8, 10, 7)
plot(a, b, type = "l", col = "red", lty = 1, lwd = 2, main = "Line Chart", xlab = "a-val", ylab = "b-val")
lines(sort(a), sort(b), col = "red", lty = 2, lwd = 2)

# Pie Chart
pie(table(cut(x, breaks = 5)), main = "Pie Chart", col = rainbow(5))

# Boxplot
boxplot(x, main = "Boxplot", xlab = "X Variable", col = "lightgreen")

# Scatter Plot with Regression Line
plot(x, y, main = "Scatter Plot with Regression Line", xlab = "X Variable", ylab = "Y Variable", pch = 16, col = "blue")
abline(lm(y ~ x), col = "red")

# Restore original par settings
par(old_par)