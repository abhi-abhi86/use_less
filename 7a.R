v1 <- c(1, 2, 3)
v2 <- c(4, 5, 6)
print(v1)
print(v2)
v_sum <- v1 + v2
cat("\nVector Addition:\n", v_sum, "\n\n")
elementwise_product <- v1 * v2
cat("Vector Multiplication:\n", elementwise_product, "\n\n")
scalar <- 2
v_scaled <- scalar * v1
cat("Scalar Multiplication:\n", v_scaled, "\n\n")

matrix1 <- matrix(c(1, 2, 3, 4), nrow = 2)
matrix2 <- matrix(c(5, 6, 7, 8), nrow = 2)
print(matrix1)
print(matrix2)
matrix_sum <- matrix1 + matrix2
cat("\nMatrix Addition:\n")
print(matrix_sum)
cat("\n")
matrix_product <- matrix1 %*% matrix2
cat("Matrix Multiplication:\n")
print(matrix_product)
cat("\n")
matrix1_transpose <- t(matrix1)
cat("Matrix Transpose:\n")
print(matrix1_transpose)