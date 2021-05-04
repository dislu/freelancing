library(twitteR)
library(httr)
library(openssl)
library(httpuv)
library(base64enc)
library(ROAuth)
library(twitteR)
library(gmailr)


api_key <- "jsZ54n7rUP6WkU5KufE0ejOBd"

api_secret <- "sb9vsQ3rQhixL4LBXKBlU193cErnWjFDQ5u6RGw1GslKdQycHA"

access_token <- "1686111846-1RETTikat9Pkdi0hH0intI2jdgw4lxSltcPmLWL"

access_token_secret <- "MlGbrugejrwpGPCd28R2EaT5eEkivTiN9lxjOoYKk9H4B"

setup_twitter_oauth(api_key, api_secret, access_token, access_token_secret)
origop <- options("httr_oauth_cache")
options(httr_oauth_cache = TRUE)


TL <- searchTwitter("educational data mining", n=50, since=as.character(Sys.Date()-6), until= as.character(Sys.Date()))#Make sure you change the dates here to be 6 days from today.
TL <- do.call("rbind", lapply(TL, as.data.frame))

if( dim(TL)[1]>5){

gm_auth_configure(path="/Users/arvind tomar/Documents/loop-closing-master/autogenerator.json")
test_email <- gm_mime(
              To = "dislu8198@gmail.com", # edit to put your mail here
              From = "arvind8198@gmail.com",
              Subject = "No of Tweets crossed threshold",
              body = "No of tweets have crossed 5 in last 6-7 days")

gm_send_message(test_email)

}