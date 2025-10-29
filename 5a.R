input_vect <- readline(prompt="Enter numeric values separated by spaces: ")
numbers <- as.numeric(unlist(strsplit(input_vect, " ")))
cat("Numbers : ", numbers, "\n")

cum_sum <- cumsum(numbers)
cum_prod <- cumprod(numbers)

cat("Cumulative sums: ", cum_sum, "\n")
cat("Cumulative product: ", cum_prod, "\n")
cat(paste("minimum of cumulative product: ", min(cum_prod), "\n"))
cat(paste("maximum of cumulative product: ", max(cum_prod), "\n"))