nsfw = module.exports
{command, parse} = require "./util"

nsfw.start = (nous) ->
  command nous, "nsfw", (input) ->
    nous.say input.to, "http://nsfw.heroku.com/search?q=#{input.msg} << NSFW"