# Concise R Data Structure Examples

v <- 1:5

m <- matrix(1:6, nrow = 2)

l <- list("apple", 10, v)

df <- data.frame(
  Name = c("John", "Jane", "Tom"),
  Age = c(25, 30, 35)
)

f <- factor(c("dog", "cat", "dog", "cat", "dog1", "cat1"))

print(paste("Vector:", paste(v, collapse = ", ")))
print(paste("Matrix (2x3):")); print(m)
print(paste("List:")); print(l)
print(paste("Data Frame:")); print(df)
print(paste("Factor:")); print(f)