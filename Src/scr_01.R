library(rtweet)

#Further reseach on coronavirus spreading in Italy

#Coronavirus in Lombardia retrieving 11193 obs. (24th February)---------------------------------------------------
coronavirus_lombardia <- search_tweets(
  "#coronavirus OR coronavirus, #Lombardia OR Lombardia", 
  n = 50000, 
  retryonratelimit = TRUE, 
  include_rts = FALSE, 
  lang = "it"
)

save(coronavirus_lombardia, file = "coronavirus_lombardia.RData")

  
#Creating an object in which I put the last id of the dataset, 
#so I will download the latest tweets (3rd march)
#downloading new 8034 obs

last_id_lombardia <- max(coronavirus_lombardia$status_id)
  
coronavirus_lombardia1 <- search_tweets(
    "#coronavirus OR coronavirus, #Lombardia OR Lombardia", 
    n = 50000, 
    retryonratelimit = TRUE, 
    include_rts = FALSE, 
    lang = "it",
    since_id = last_id_lombardia
  )
save(coronavirus_lombardia1, file = "coronavirus_lombardia1.RData")

#new 1880 obs 6th march
last_id_lombardia <- max(coronavirus_lombardia1$status_id)

coronavirus_lombardia2 <- search_tweets(
  "#coronavirus OR coronavirus, #Lombardia OR Lombardia", 
  n = 50000, 
  retryonratelimit = TRUE, 
  include_rts = FALSE, 
  lang = "it",
  since_id = last_id_lombardia
)
save(coronavirus_lombardia2, file = "coronavirus_lombardia2.RData")

#Coronavirus in Veneto retrievng 6591 obs.(24th February)-------------------------------------------------------

coronavirus_veneto <- search_tweets(
  "#coronavirus OR coronavirus, #Veneto OR Veneto", 
  n = 50000, 
  retryonratelimit = TRUE, 
  include_rts = FALSE, 
  lang = "it"
)

save(coronavirus_veneto, file = "coronavirus_veneto.RData")

#New 4151 observations 3rd march
last_id_veneto <- max(coronavirus_veneto$status_id)


coronavirus_veneto1 <- search_tweets(
  "#coronavirus OR coronavirus, #Veneto OR Veneto", 
  n = 50000, 
  retryonratelimit = TRUE, 
  include_rts = FALSE, 
  lang = "it",
  since_id = last_id_veneto
)

save(coronavirus_veneto1, file = "coronavirus_veneto1.RData")

#new 894 obs 6th march
last_id_veneto <- max(coronavirus_veneto1$status_id)

coronavirus_veneto2 <- search_tweets(
  "#coronavirus OR coronavirus, #Veneto OR Veneto", 
  n = 50000, 
  retryonratelimit = TRUE, 
  include_rts = FALSE, 
  lang = "it",
  since_id = last_id_veneto
)

save(coronavirus_veneto2, file = "coronavirus_veneto2.RData")


#Coronavirus in Piemonte retrieving 1719 obs.(25th February)--------------------------------------------------------
coronavirus_piemonte <- search_tweets(
  "#coronavirus OR coronavirus, #Piemonte OR Piemonte", 
  n = 50000, 
  retryonratelimit = TRUE, 
  include_rts = FALSE, 
  lang = "it"
)

save(coronavirus_piemonte, file = "coronavirus_piemonte.RData")

#New 1733 observations 3rd march
last_id_piemonte <- max(coronavirus_piemonte$status_id)

coronavirus_piemonte1 <- search_tweets(
  "#coronavirus OR coronavirus, #Piemonte OR Piemonte", 
  n = 50000, 
  retryonratelimit = TRUE, 
  include_rts = FALSE, 
  lang = "it",
  since_id = last_id_piemonte
)
save(coronavirus_piemonte1, file = "coronavirus_piemonte1.RData")

#new 592 obs 6th march
last_id_piemonte <- max(coronavirus_piemonte1$status_id)

coronavirus_piemonte2 <- search_tweets(
  "#coronavirus OR coronavirus, #Piemonte OR Piemonte", 
  n = 50000, 
  retryonratelimit = TRUE, 
  include_rts = FALSE, 
  lang = "it",
  since_id = last_id_piemonte
)
save(coronavirus_piemonte2, file = "coronavirus_piemonte2.RData")
