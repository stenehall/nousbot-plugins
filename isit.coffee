isit = module.exports
{command, parse} = require "./util"

isit.start = (nous) ->
  command nous, "isit", (input) ->
    switch input.msg
      when "monday" 
        url = "http://isitmondaynow.com/"
        selector = "h2"
      when "halloween"
        url = "http://isithalloween.com/"
        selector = "h1"
      when "friday"
        url = "http://isitfriday.biz/"
        selector = "#yesOrNo"
      else
        url = "http://isitchristmas.com/"
        selector = "#answer"

    parse url, (err, $, data) ->
      quote = $(selector).text
      if quote
        nous.say input.to, "#{quote}"
      else
        nous.say input.to, "Sorry, I have no idea"
