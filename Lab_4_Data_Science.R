options(scipen = 999)
library(dplyr)
library(ggplot2) 
library(readxl)
library(gmodels)
library(Hmisc)
library(ggthemes)
library(tidytext)
library(tidyverse)
library(reshape2)
library(wordcloud)
library(RWeka)

glimpse(train)

table(train$keyword)

table(train$target)

CrossTable(train$target)

summary(train)

describe(train)

hist(train$target)

train_bigrama <-
  train %>%
  unnest_tokens(input = "keyword", output = "bigrama", token = "ngrams", n = 2)

train_bigrama %>%
  count(bigrama, sort = T)






