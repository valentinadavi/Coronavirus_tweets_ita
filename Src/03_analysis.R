#visualizing

library(ggplot2)

frequency_plot <- ts_plot(coronavirus_full_upto0503, "1 hour") +
  ggplot2::theme_minimal() +
  scale_x_datetime(date_minor_breaks = "1 day", date_breaks = "1 day", date_labels = "%d")+
  ggplot2::theme(plot.title = ggplot2::element_text(face = "bold")) +
  ggplot2::labs(
    x = "Date", y = "Frequency",
    title = "Frequency of italian tweets relating to coronavirus from Feb 02 to Mar 05"
  )

frequency_plot
#Finally, let's save the plot
ggsave(frequency_plot, filename = "Frequency plot for coronavirus until 05/03.pdf",
       device = cairo_pdf, width = 10, height = 4)



# TEXT ANALYSIS 

#Let's try and do some text analysis on the tweets relating to coronavirus. 


# First, removing the http elements

coronavirus_full_upto0503$stripped_text <- gsub("http\\S+", "", coronavirus_full_upto0503$text)


#Then bring to lowercase, erase punctuation, and add id for each tweet

coronavirus_full_upto0503_new <- coronavirus_full_upto0503 %>% 
  select(stripped_text) %>% 
  unnest_tokens(word, stripped_text)


#Remove stopwords 

unnecessary_words <- c("yt", "ps")


cleaned_coronavirus_0503 <- coronavirus_full_upto0503_new %>% 
  anti_join(get_stopwords(language = "it", source= "stopwords-iso")) %>%
  anti_join(get_stopwords(language = "it", source= "snowball")) %>%
  filter(!str_detect(word, '\\d+')) %>%
  filter(!str_detect(word, '[[:punct:]]')) %>% 
  filter(!str_detect(word, unnecessary_words)) 

#Now saving the cleaned dataset 

save(cleaned_coronavirus, file = "cleaned_coronavirus.RData")

# Now we want to visualize the ten most used words 

Top_10_words_plot_coronavirus <- cleaned_coronavirus %>% 
  count(word, sort = TRUE) %>% 
  top_n(10) %>% 
  mutate(word = reorder(word, n)) %>% 
  ggplot(aes(x=word, y=n)) +
  geom_col() +
  xlab (NULL) +
  coord_flip() +
  theme_classic() +
  labs(x = "Count",
       y = "Unique words",
       title = "10 most used words found in tweets relating to Coronavirus")

Top_10_words_plot_coronavirus

#saving the plot

ggsave(Top_10_words_plot_coronavirus, filename = "Top_10_words_plot_coronavirus.png",
       width = 10, height = 4)

# Visualizing a wordcloud 

wordcloud_coronavirus <- coronavirus_full_upto0503_new %>% 
  count(word) %>% 
  with(wordcloud(word, n, max.words = 50, scale = c(2.2,0.70),(min.freq=5), colors=brewer.pal(8, "Dark2"),
                 random.color=T, random.order=F))

