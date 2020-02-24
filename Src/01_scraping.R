# The purpose here is to continue a previous research 
# The idea is to download italian tweets that contain the word coronavirus
library(rtweet)

italian_coronav_tweets1_2402 <- search_tweets2(
  c("coronavirus"), n = 50000, 
  retryonratelimit = TRUE,
  include_rts = FALSE, 
  lang = "it",
  since_id =  1229719602764099585
)

save(italian_coronav_tweets1_2402, file = "Italian_coronav_tweets_2402.RData")
