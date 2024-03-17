

# telegram api / bot token : 6394478474:AAH9gWWLMPhayOcUkXKEyBDWOsTkW6l1JXw
# chat id : 4049691882
# json bot info : https://api.telegram.org/bot6394478474:AAH9gWWLMPhayOcUkXKEyBDWOsTkW6l1JXw/getMe
# json live updates : https://api.telegram.org/bot6394478474:AAH9gWWLMPhayOcUkXKEyBDWOsTkW6l1JXw/getUpdates
# sending msg from bot : https://api.telegram.org/bot6394478474:AAH9gWWLMPhayOcUkXKEyBDWOsTkW6l1JXw/sendMessage?chat_id=-4049691882&text=TestReply


library(telegram.bot)
library(stringr)

bot_token <- "6394478474:AAH9gWWLMPhayOcUkXKEyBDWOsTkW6l1JXw"
chat_id <- -4049691882

bot <- Bot(token = bot_token)

# checking
print(bot$get_me())
# or
print(bot$getUpdates())

# in order to send a message response manually , lmao wwydt , send this 
# bot$sendMessage(chat_id = chat.id, text = "hahah loser")
# bot$sendMessage(chat_id = chat.id, text = "pangsai")
bot$sendMessage(chat_id = chat_id, text = "Good Morning my Gs")
# unless you want to keep typing in the chat id , function it into the bot$sendMessage
# as shown below 

# function(text_to_send) {
#  bot$sendmessage(-4049691882,
#                  text_to_send,
#                  parse_mode = NULL)
#}

# creating the updater object 
updater <- Updater(token = "6394478474:AAH9gWWLMPhayOcUkXKEyBDWOsTkW6l1JXw") 
# go to renviron tab and do that thing in order to use the bot_token function by entering : 
file.edit(path.expand(file.path("~", ".Renviron")))

Sys.getenv(token)

updater <- Updater(token = bot_token("bottyshawty_bot"))


while (TRUE) {
  Sys.sleep(5)
  if (format(Sys.time(), "%M") == "13") {
    if (format(Sys.time(), "%H") == "01") {
      bot$sendmessage("Good Morning my Gs")
    }
  }    
}
      
updater$start_polling()   
    







library(telegram.bot)

start <- function(bot, update) {
  bot$sendMessage(
    chat_id = update$message$chat$id,
    text = sprintf("Hello %s!", update$message$from$first_name)
  )
}

updater <- Updater("TOKEN") + CommandHandler("start", start)

updater$start_polling() # Send "/start" to the bot


while (TRUE) {
  Sys.sleep(5)
  if (format(Sys.time(), "%M") == "03") {
    if (format(Sys.time(), "%H") == "01") {
      bot$sendmessage(chat_id = chat_id, text = "Good Morning my Gs")
    }
  }    
}

Sys.time

    