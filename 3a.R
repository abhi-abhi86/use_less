arithmetic_operations <- function() {
  a <- 5
  b <- 3
  
  cat("\nArithmetic Operators:\n")
  cat(paste("a + b =", a + b, 
            "\na - b =", a - b, 
            "\na * b =", a * b, 
            "\na / b =", a / b, 
            "\na ^ b =", a ^ b, 
            "\na %% b =", a %% b, "\n"))
  
  x <- 10
  cat("\nAssignment Operators:\n")
  x <- x + 5
  cat(paste("x = x + 5, x =", x, "\n"))
  x <- x - 2
  cat(paste("x = x - 2, x =", x, "\n"))
  x <- x * 3
  cat(paste("x = x * 3, x =", x, "\n"))
  x <- x / 4
  cat(paste("x = x / 4, x =", x, "\n"))
  
  p <- 7
  q <- 3
  cat("\nComparison Operators:\n")
  cat(paste("p == q is", p == q, 
            "\np != q is", p != q, 
            "\np > q is", p > q, 
            "\np < q is", p < q, 
            "\np >= q is", p >= q, 
            "\np <= q is", p <= q, "\n"))
  
  logical_value <- TRUE
  another_logical_value <- FALSE
  cat("\nLogical Operators:\n")
  cat(paste("logical_value && another_logical_value is", logical_value && another_logical_value, 
            "\nlogical_value || another_logical_value is", logical_value || another_logical_value, 
            "\n!logical_value is", !logical_value, "\n"))
}

control_structures <- function() {
  cat("If-Else: \n")
  x <- 10
  if (x > 5) {
    cat("x is greater than 5.\n")
  } else {
    cat("x is not greater than 5.\n")
  }
  
  cat("\nFor Loop:\n")
  for (i in 1:5) {
    cat(paste("Iteration ", i, "\n"))
  }
  
  cat("\nWhile Loop:\n")
  y <- 0
  while (y < 5) {
    cat(paste("y is", y, "\n"))
    y <- y + 1
  }
  
  cat("\nSwitch-Case Statement:\n")
  day <- "Tuesday"
  switch(day,
         "Monday" = cat("It's the first day of the week.\n"),
         "Tuesday" = cat("It's the second day of the week.\n"),
         "Wednesday" = cat("It's the third day of the week.\n"),
         "Thursday" = cat("It's the fourth day of the week.\n"),
         "Friday" = cat("It's the fifth day of the week.\n"),
         "Saturday" = cat("It's the weekend!\n"),
         "Sunday" = cat("It's the weekend!\n"),
         cat("Invalid day.\n")
  )
}

print_complex_object <- function() {
  my_complex <- complex(real = 3, imaginary = 2)
  cat(paste("\nComplex object :", my_complex, "\n"))
  result <- my_complex + complex(real = 1, imaginary = 2)
  cat(paste("Addition of complex objects: ", result, "\n"))
  cat(paste("Real part of complex object: ", Re(my_complex), "\n"))
  cat(paste("Imaginary part of complex object: ", Im(my_complex), "\n"))
  cat(paste("Conjugate of complex object: ", Conj(my_complex), "\n"))
}

control_structures()
arithmetic_operations()
print_complex_object()