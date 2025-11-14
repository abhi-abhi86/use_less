name = "hello"
age = 25L
pi_v = 3.14
flag = TRUE

unlockBinding("value", globalenv())
value = 100
lockBinding("value", globalenv())

cat("Name:", name, "- Type:", typeof(name), "\n")
cat("Age:", age, "- Type:", typeof(age), "\n")
cat("Pi:", pi_v, "- Type:", typeof(pi_v), "\n")
cat("Flag:", flag, "- Type:", typeof(flag), "\n")
cat("Value:", value, "- Type:", typeof(value), "\n")