# The purpose here is to continue a previous research 
# The idea is to download italian tweets that contain the word coronavirus
library(rtweet)

italian_coronav_tweets1_2402 <- search_tweets2(
  c("coronavirus"), n = 50000, 
  retryonratelimit = TRUE,
  include_rts = FALSE, 
  lang = "it",
  since_id =  1229719602764099585, 
  
)
#retrieved 53681 tweets from 23 to 24 / 02 

save(italian_coronav_tweets1_2402, file = "Italian_coronav_tweets_2402.RData")

# new try with older tweets 
italian_coronav_tweets_2402b <- search_tweets2(
  c("coronavirus"), n = 50000, 
  retryonratelimit = TRUE, 
  include_rts = FALSE, 
  lang = "it", 
  since_id = 1229719602764099585,
  max_id = 1231635361140543488
)

#this retrieves 53543 tweets from 22 to 23 of february

save(italian_coronav_tweets_2402b, file ="Italian_coronav_tweets_2402_b.RData")
