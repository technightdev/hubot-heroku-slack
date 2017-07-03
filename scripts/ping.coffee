# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   hubot ping - Replies with pong
#   hubot echo <text> - Reply back with <text>
#   hubot time - Reply with current time
#   hubot die - End hubot process

module.exports = (robot) ->
  robot.respond /PING$/i, (msg) ->
    msg.send "PONG"

  robot.respond /ADAPTER$/i, (msg) ->
    msg.send robot.adapterName

  robot.respond /ECHO (.*)$/i, (msg) ->
    msg.send msg.match[1]

  robot.respond /TIME$/i, (msg) ->
    msg.send "Heroku's Server time is: #{new Date()}"

  robot.respond /DIE$/i, (msg) ->
    msg.send "Goodbye, cruel world."
    process.exit 0
  robot.respond /ermagurd$/i, (msg) ->
    var geoip = require('geoip-lite');

    var ip = "207.97.227.239";
    var geo = geoip.lookup(ip);
    msg.send "uhhh no"