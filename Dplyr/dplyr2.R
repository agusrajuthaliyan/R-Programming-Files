library(dplyr)
data(iris)

step1 <- iris %>% 
  select(Sepal.Length, Sepal.Width, Petal.Length)

step2 <- iris %>% 
  select(-Petal.Width)

step3 <- iris %>% 
  select(starts_with("P"))

step4 <- iris %>% 
  filter(Sepal.Length >= 4.6, Petal.Width >= 0.5)

step5 <- iris %>% 
  select(Sepal.Width, Sepal.Length)


step6 <- iris %>% 
  arrange(Sepal.Width)


step7 <- iris %>% 
  select(Sepal.Length, Sepal.Width, Species) %>% 
  arrange(Sepal.Length, Sepal.Width)


step8 <- iris %>% 
  mutate(proportion = Sepal.Length / Sepal.Width)


step9 <- iris %>% 
  summarise(avg_slength = mean(Sepal.Length, na.rm = TRUE))

step10 <- iris %>% 
  group_by(Sepal.Length) %>% 
  summarise(avg_slength = mean(Sepal.Length, na.rm = TRUE))

print("Step 1: First 3 columns")
print(head(step1))

print("Step 2: All columns except Petal.Width")
print(head(step2))

print("Step 3: Columns starting with P")
print(head(step3))

print("Step 4: Filtered rows")
print(head(step4))

print("Step 5: Selected Sepal.Width and Sepal.Length")
print(head(step5))

print("Step 6: Arranged by Sepal.Width")
print(head(step6))

print("Step 7: Selected 3 columns, arranged by Sepal.Length then Sepal.Width")
print(head(step7))

print("Step 8: New column 'proportion'")
print(head(step8))

print("Step 9: Average Sepal.Length")
print(step9)

print("Step 10: Grouped by Sepal.Length with avg_slength")
print(head(step10))
