responses <- factor(c("Agree", "Agree", "Strongly Agree", "Disagree", "Agree"))
levels(responses) <- c(levels(responses), "Strongly Disagree")
print(levels(responses))
