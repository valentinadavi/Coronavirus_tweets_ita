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


#new download on 27/02

last_id_2402 <- max_id(italian_coronav_tweets_2402b)

italian_coronav_tweets_2702 <- search_tweets2(
  c("coronavirus"), n = 50000, 
  retryonratelimit = TRUE, 
  include_rts = FALSE, 
  lang = "it", 
  since_id = last_id_2402
  
)
save(italian_coronav_tweets_2702, file = "italian_coronav_tweets_2702.RData")
# retrieved 46756 tweets from 26th to 27th/02

#trying to get the tweets before the 26 

max_id_2702 <- max_id(italian_coronav_tweets_2702)  #older tweet of 2702
min_id_2402b <- since_id(italian_coronav_tweets_2402b)
  #younger tweets of 2402b 

italian_coronav_tweets_2902 <- search_tweets2(
  c("coronavirus"), n = 50000, 
  retryonratelimit = TRUE, 
  include_rts = FALSE, 
  lang = "it", 
  since_id = min_id_2402b, 
  max_id = max_id_2702
)
#retrieved 53442 observations from 2502 to 2602
save(italian_coronav_tweets_2902,file = "Italian_coronav_tweets_2902.RData")

min_id_2702 <- since_id(italian_coronav_tweets_2702)
#younger tweets of 2402b 
italian_coronav_tweets_0303 <- search_tweets2(
  c("coronavirus"), n = 50000, 
  retryonratelimit = TRUE, 
  include_rts = FALSE, 
  lang = "it", 
  since_id = min_id_2702) 
#retreived tweets from 01 03 to 03 03. 

save(italian_coronav_tweets_0303, file = "Italian_coronav_tweets_0303.RData")