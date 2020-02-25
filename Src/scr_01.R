library(rtweet)

#Further reseach on coronavirus spreading in Italy

#Coronavirus in Lombardia retrieving 11193 obs.
coronavirus_lombardia <- search_tweets(
  "#coronavirus OR coronavirus, #Lombardia OR Lombardia", 
  n = 50000, 
  retryonratelimit = TRUE, 
  include_rts = FALSE, 
  lang = "it"
)

save(coronavirus_lombardia, file = "coronavirus_lombardia.RData")

#Coronavirus in Veneto
coronavirus_veneto <- search_tweets(
  "#coronavirus OR coronavirus, #Veneto OR Veneto", 
  n = 50000, 
  retryonratelimit = TRUE, 
  include_rts = FALSE, 
  lang = "it"
)

save(coronavirus_veneto, file = "coronavirus_veneto.RData")

#Coronavirus in Piemonte
coronavirus_piemonte <- search_tweets(
  "#coronavirus OR coronavirus, #Piemonte OR Piemonte", 
  n = 50000, 
  retryonratelimit = TRUE, 
  include_rts = FALSE, 
  lang = "it"
)

save(coronavirus_piemonte, file = "coronavirus_piemonte.RData")
