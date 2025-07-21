cat("Enter numeric values separated by space: ")
num_vec <- scan(what = numeric(), quiet = TRUE)
process_vector <- function(vec) {
  sorted_vec <- sort(vec)        
  result <- sorted_vec * 2    
  return(result)
}
output_vec <- process_vector(num_vec)
cat("Processed vector (sorted and multiplied by 2):", output_vec, "\n")
