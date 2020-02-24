library(rtweet)

#Further reseach on coronavirus spreading in Italy

#Retrieving
coronavirus_lombardia <- search_tweets(
  "#coronavirus OR coronavirus, #Lombardia OR Lombardia", 
  n = 50000, 
  retryonratelimit = TRUE, 
  include_rts = FALSE, 
  lang = "it"
)

save(coronavirus_lombardia, file = "coronavirus_lombardia.RData")

coronavirus_veneto <- search_tweets(
  "#coronavirus OR coronavirus, #Veneto OR Veneto", 
  n = 50000, 
  retryonratelimit = TRUE, 
  include_rts = FALSE, 
  lang = "it"
)

save(coronavirus_veneto, file = "coronavirus_veneto.RData")
