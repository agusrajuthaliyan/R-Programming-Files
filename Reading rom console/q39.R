process_vector <- function(vec) {
  sorted_vec <- sort(vec)        
  result <- sorted_vec * 2       
  return(result)
}

cat("Enter alphanumeric values separated by space (e.g., a v 7 4 q): ")
input_vec <- scan(what = character(), quiet = TRUE)
process_alphanumeric_vector <- function(vec) {
  numeric_only <- suppressWarnings(as.numeric(vec))    
  numeric_only <- numeric_only[!is.na(numeric_only)]   
  result <- process_vector(numeric_only)              
  return(result)
}

final_result <- process_alphanumeric_vector(input_vec)
cat("Final numeric-only processed vector:", final_result, "\n")
