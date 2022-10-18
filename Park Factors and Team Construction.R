# here i want to load all the libraries i may use
library(tidyverse)
library(baseballr)
library(ggplot2)
parkfactors_21 <- fg_park_hand(2021)
parkfactors_21 %>%
  filter(single_as_LHH < single_as_RHH & double_as_LHH < double_as_RHH & triple_as_LHH < triple_as_RHH & hr_as_LHH < hr_as_RHH)
parkfactors_21 %>%
  filter(single_as_LHH > single_as_RHH & double_as_LHH > double_as_RHH & triple_as_LHH > triple_as_RHH & hr_as_LHH > hr_as_RHH)
parkfactors_21 %>% 
  filter(single_as_LHH < single_as_RHH & double_as_LHH < double_as_RHH & hr_as_LHH < hr_as_RHH)
parkfactors_21 %>% 
  filter(single_as_LHH > single_as_RHH & double_as_LHH > double_as_RHH & hr_as_LHH > hr_as_RHH)
# RIGHT WITH TRIPLES
bref_daily_batter("2021-04-01", "2021-10-03") %>%
  filter(Team == "Oakland") %>%
  filter(AB > 50) %>%
  view()
# LEFT WITH TRIPLES
bref_daily_batter("2021-04-01", "2021-10-03") %>%
  filter(Team == "Texas") %>%
  filter(AB > 50) %>%
  view()
bref_daily_batter("2021-04-01", "2021-10-03") %>%
  filter(Team == "Arizona") %>%
  filter(AB > 50) %>%
  view()
bref_daily_batter("2021-04-01", "2021-10-03") %>%
  filter(Team == "Houston") %>%
  filter(AB > 50) %>%
  view()
# RIGHT WITHOUT TRIPLES
bref_daily_batter("2021-04-01", "2021-10-03") %>%
  filter(Team == "Toronto") %>%
  filter(AB > 50) %>%
  view()
# LEFT WITHOUT TRIPLES
bref_daily_batter("2021-04-01", "2021-10-03") %>%
  filter(Team == "St. Louis") %>%
  filter(AB > 50) %>%
  view()
# plot w csvs
lvl <- read.csv('FanGraphs Leaderboard.csv')
lvr <- read.csv('FanGraphs Leaderboard (1).csv')
rvr <- read.csv('FanGraphs Leaderboard (2).csv')
rvl <- read.csv('FanGraphs Leaderboard (3).csv')
ggp