library(dplyr)
sampledata <- read.csv("sampledata.csv")
selected_data <- sampledata %>%
  select(Index, State:Y2008)

no_Y_vars <- sampledata %>%
  select(-starts_with("Y"))

index_A <- sampledata %>%
  filter(Index == "A")

index_AC <- sampledata %>%
  filter(Index %in% c("A", "C"))

index_AC_income <- sampledata %>%
  filter(Index %in% c("A", "C") & Y2002 > 1300000)

sampledata %>%
  summarise(mean_Y2015 = mean(Y2015, na.rm = TRUE),
            median_Y2015 = median(Y2015, na.rm = TRUE))

sampledata %>%
  summarise(across(c(Y2014, Y2015), list(mean = ~mean(.x, na.rm = TRUE),
                                         median = ~median(.x, na.rm = TRUE))))
sampledata %>%
  select(Index, State) %>%
  slice_sample(n = 10)

sampledata %>%
  group_by(Index) %>%
  summarise(count = n(),
            mean_Y2011 = mean(Y2011, na.rm = TRUE),
            mean_Y2012 = mean(Y2012, na.rm = TRUE))

sampledata %>%
  group_by(Index) %>%
  summarise(mean_Y2014 = mean(Y2014, na.rm = TRUE),
            mean_Y2015 = mean(Y2015, na.rm = TRUE)) %>%
  arrange(desc(mean_Y2015))

sampledata <- sampledata %>%
  mutate(change = Y2015 / Y2014)

sampledata <- sampledata %>%
  mutate(across(Y2008:Y2010, ~rank(-.x, na.last = "keep"), .names = "rank_{.col}"))

sampledata %>%
  filter(Y2015 == max(Y2015, na.rm = TRUE)) %>%
  select(State, Index, Y2015)



