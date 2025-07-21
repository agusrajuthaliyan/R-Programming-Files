library(tidyr)
library(dplyr)

nba <- data.frame(
  player = c("James", "Durant", "Curry", "Harden", "Paul", "Wade"),
  team = c("CLEOH", "GSWOAK", "GSWOAK", "HOUTX", "HOUTX", "CLEOH"),
  day1points = c("25", "23", "30", "41", "26", "20"),
  day2points = c("24", "25", "33", "45", "26", "23")
)

#question1
nba_long <- nba %>%
  pivot_longer(cols = c(day1points, day2points), 
               names_to = "day", 
               values_to = "points")
#question2
nba_long_reversed <- nba %>%
  pivot_longer(cols = c(day1points, day2points), 
               names_to = "points", 
               values_to = "day")

#question3
nba_wide <- nba_long %>%
  pivot_wider(names_from = day, values_from = points)

#question4
nba_wide_wrong <- nba_long %>%
  pivot_wider(names_from = points, values_from = day)

#question5
nba_split <- nba %>%
  separate(team, into = c("Team", "State"), sep = 3)

#question6
nba_wrong_split <- nba %>%
  separate(team, into = c("Team", "State"), sep = 2)

#question7
nba_united <- nba_split %>%
  unite(col = team, Team, State, sep = "")

#question8
nba_final <- nba %>%
  separate(team, into = c("Team", "State"), sep = 3) %>%
  pivot_longer(cols = c(day1points, day2points), 
               names_to = "day", 
               values_to = "points") %>%
  select(player, Team, State, day, points)

print(nba_long)







