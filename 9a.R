library(dplyr)
dataFrame <- data.frame(
  ID = c(1, 2, 3, 4, 5),
  Name = c("John", "Jane", "Bob", "Alice", "Charlie"),
  Age = c(25, 30, 22, 28, 35),
  Score = c(95, 88, 75, 92, 80)
)
cat("Data frame:\n")
print(dataFrame)

cat("\nIndexing and Subsetting:\n")
id_column <- dataFrame$ID
name_column <- dataFrame$Name
cat("Indexing by column:\nID column:", id_column, "\nName column:",name_column,"\n")
row_1 <- dataFrame[1,]
row_name <- dataFrame[dataFrame$Name == "John",]
cat("Indexing by rows: First row:\n")
print(row_1)
cat("Any row selection:\n")
print(row_name)
young_people <- dataFrame[dataFrame$Age < 30,]
cat("\nData frame subsetting: Age<30:\n")
print(young_people)

dataAge <- dataFrame$Age
cat("\nMean of Age:")
mean_age <- mean(dataAge)
print(mean_age)

correlation_matrix <- cor(dataFrame[, c("Age", "Score")])
cat("\ncorrelation of age and score: \n")
print(correlation_matrix)

colnames(dataFrame)[colnames(dataFrame) == "Score"] <- "Grade"
cat("\nRename column from Score to Grade: \n")
print(dataFrame)

dataFrame$GradeLevel <- ifelse(dataFrame$Grade >= 90, "A", ifelse(dataFrame$Grade >= 80, "B", "C"))
cat("\nNew column added: GradeLevel \n")
print(dataFrame)

dataFrame$Grade <- NULL
cat("\nGrade column removed: \n")
print(dataFrame)