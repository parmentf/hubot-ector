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
#   sentence not triggering any other command - Makes hubot reply.
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

module.exports = (robot) ->

  ector.setName robot.name

  robot.catchAll (msg) ->
    text = msg.message.text
    ector.setUser msg.message.user.name
    ector.addEntry text
    ector.linkNodesToLastSentence previousResponseNodes
    response = ector.generateResponse()
    previousResponseNodes = response.nodes
    msg.reply response.sentence
