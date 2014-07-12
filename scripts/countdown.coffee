# Description:
#   How long until hackerschool?
#
# Commands:
#   hsbot countdown - Reply with how long until hackerschool

module.exports = (robot) ->
  robot.respond /COUNTDOWN$/i, (msg) ->
    seconds = (new Date(2014,6,21,10) - new Date()) / 1000
    minutes = seconds / 60 % 60
    hours = seconds / 60 / 60 % 24
    days = seconds / 60 / 60 / 24 % 60
    _ = Math.floor
    msg.send "#{_ days} days, #{_ hours} hours, #{_ minutes} minutes"
