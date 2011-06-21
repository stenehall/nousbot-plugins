nsfw = module.exports
{command, parse} = require "./util"

nsfw.start = (nous) ->
  command nous, "nsfw", (input) ->
    nous.say input.to, "#{input.from}: http://nsfw.heroku.com/search?q=#{input.msg} << NSFW"