emp <- data.frame(
  emp_id = c(101, 102, 103, 104, 105),
  name = c("John", "Jane", "Alice", "Bob", "Tom"),
  salary = c(50000, 55000, 52000, 51000, 58000)
)
print(emp[c(3,5), c(1,3)])
