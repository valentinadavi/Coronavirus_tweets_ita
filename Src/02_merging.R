coronavirus_february <- rbind(italian_coronav_tweets1_2402, italian_coronav_tweets_2402b, italian_coronav_tweets_2702, 
                              italian_coronav_tweets_2902)
  
coronavirus_march <- rbind(italian_coronav_tweets_0303, italian_coronav_tweets_0503)

coronavirus_full_upto0503 <- rbind(coronavirus_february, coronavirus_march, italian_coronavirus_dataset)

save(coronavirus_full_upto0503, file = "Italian_coronav_tweets_allupto0503.RData")

