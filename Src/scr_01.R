library(rtweet)

#Further reseach on coronavirus spreading in Italy

#Coronavirus in Lombardia retrieving 11193 obs.---------------------------------------------------
coronavirus_lombardia <- search_tweets(
  "#coronavirus OR coronavirus, #Lombardia OR Lombardia", 
  n = 50000, 
  retryonratelimit = TRUE, 
  include_rts = FALSE, 
  lang = "it"
)

save(coronavirus_lombardia, file = "coronavirus_lombardia.RData")

  
#Creating an object in which I put the last id of the dataset, so I will download the latest tweets

last_id_lombardia <- max(coronavirus_lombardia$status_id)
  
coronavirus_lombardia1 <- search_tweets(
    "#coronavirus OR coronavirus, #Lombardia OR Lombardia", 
    n = 50000, 
    retryonratelimit = TRUE, 
    include_rts = FALSE, 
    lang = "it",
    since_id = last_id_lombardia
  )

#Coronavirus in Veneto retrievng 6591 obs.-------------------------------------------------------

coronavirus_veneto <- search_tweets(
  "#coronavirus OR coronavirus, #Veneto OR Veneto", 
  n = 50000, 
  retryonratelimit = TRUE, 
  include_rts = FALSE, 
  lang = "it"
)

save(coronavirus_veneto, file = "coronavirus_veneto.RData")

#Doing it for each dataset
last_id_veneto <- max(coronavirus_veneto$status_id)


coronavirus_veneto <- search_tweets(
  "#coronavirus OR coronavirus, #Veneto OR Veneto", 
  n = 50000, 
  retryonratelimit = TRUE, 
  include_rts = FALSE, 
  lang = "it",
  since_id = last_id_veneto
)

#Coronavirus in Piemonte retrieving 1719 obs.--------------------------------------------------------
coronavirus_piemonte <- search_tweets(
  "#coronavirus OR coronavirus, #Piemonte OR Piemonte", 
  n = 50000, 
  retryonratelimit = TRUE, 
  include_rts = FALSE, 
  lang = "it"
)

save(coronavirus_piemonte, file = "coronavirus_piemonte.RData")

#New observations
last_id_piemonte <- max(coronavirus_piemonte$status_id)

coronavirus_piemonte1 <- search_tweets(
  "#coronavirus OR coronavirus, #Piemonte OR Piemonte", 
  n = 50000, 
  retryonratelimit = TRUE, 
  include_rts = FALSE, 
  lang = "it",
  since_id = last_id_piemonte
)
