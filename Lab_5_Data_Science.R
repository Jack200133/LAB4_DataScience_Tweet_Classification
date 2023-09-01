library(rtweet)
library(tidytext)
library(dplyr)
library(tidyverse)
library(wordcloud)
library(reshape2)
library(RColorBrewer)
library(twitteR)
library(RCurl)
library(wordcloud)
library(tm)
library(sentimentr)

count(train, keyword)

train %>%
  get_sentences() %>%
  sentiment() -> train_sentiment

train_sentiment %>%
  ggplot() + geom_density(aes(sentiment))

train_sentiment %>%
  mutate(polarity_level = ifelse(sentiment > 0, "Positive", "Negative")) %>%
  count(keyword, polarity_level)







