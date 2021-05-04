#install and load the following libraries
library(tm)
library(SnowballC)
library(wordcloud)
library(ggplot2)
library(tidyverse) #You will need the full tidyverse package not tidyr and dyplr separately
library(topicmodels)

#Create a list of all the files, then loop over file list importing them and binding them together
D1 <- list.files(path = "/Users/arvind tomar/Documents/natural-language-processing-master/class-notes/",
                 pattern = "*.csv", 
                 full.names = T) %>% 
  map_df(~read_csv(., col_types = cols(.default = "c"))) 