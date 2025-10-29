quicksort <- function(arr) {
  if (length(arr) <= 1) {
    return(arr)
  } else {
    pivot <- arr[1]
    return(c(quicksort(arr[arr < pivot]), arr[arr == pivot], quicksort(arr[arr > pivot])))
  }
}

unsorted_array <- sample(1:1000, 10)
sorted_array <- quicksort(unsorted_array)
cat("Unsorted Array: ", unsorted_array, "\n")
cat("Sorted Array: ", sorted_array, "\n")