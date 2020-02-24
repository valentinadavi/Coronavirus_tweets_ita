# The purpose here is to continue a previous research 
# The idea is to download italian tweets that contain the word coronavirus

italian_coronav_tweets1_2402 <- search_tweets2(
  c("coronavirus"), n = 50000, 
  retryonratelimit = TRUE,
  include_rts = FALSE, 
  lang = "it",
  since_id =  
)