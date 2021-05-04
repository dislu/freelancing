setwd("YOURWORKINGDIRECTORY")
library(rmarkdown)
rmarkdown::render("NAMEOFMARKDOWNDOC.Rmd")

library(gmailr)
gm_auth_configure(path="/Users/arvind tomar/Documents/loop-closing-master/autogenerator.json")

## edit below with email addresses from your life
test_email <- gm_mime(
  To = "dislu8198@gmail.com", # edit to put your mail here
  From = "arvind8198@gmail.com",
  Subject = "this is just a gmailr test",
  body = "Can you hear me now?")

gm_send_message(test_email)