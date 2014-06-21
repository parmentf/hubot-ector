# Description:
#   Make hubot learn and reply, when no other script is triggered.
#
# Dependencies:
#   "ector": "^0.1.6"
#
# Configuration:
#   None
#
# Commands:
#   sentence not triggering any other command - Makes hubot reply (see "shut up" and "speak").
#   hubot shut up - Make hubot quiet.
#   hubot speak - Make hubot speak again.
#
# Notes:
#   None
#
# Author:
#   parmentf

util = require 'util'
Ector = require 'ector'

ector = new Ector()
previousResponseNodes = null
quiet = false
speakReplies = 
  [ 'Thanks.', 'OK', 'As you will.', 'Glad to be here again :)', ':)', 'Thank you.']

module.exports = (robot) ->

  ector.setName robot.name

  robot.respond /shut up/i, (msg) ->
    quiet = true

  robot.respond /speak/i, (msg) ->
    quiet = false
    msg.reply msg.random speakReplies

  robot.catchAll (msg) ->
    if not quiet
      text = msg.message.text
      ector.setUser msg.message.user.name
      ector.addEntry text
      ector.linkNodesToLastSentence previousResponseNodes
      response = ector.generateResponse()
      previousResponseNodes = response.nodes
      msg.reply response.sentence
