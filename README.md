# Hubot Ector

A learning chatterbot script package for [Hubot](https://hubot.github.com/)

[![Build Status](https://travis-ci.org/parmentf/hubot-ector.png)](https://travis-ci.org/parmentf/hubot-ector)

[![NPM](https://nodei.co/npm/hubot-ector.png)](https://nodei.co/npm/hubot-ector/)

## Installation

After [having a hubot
installed](https://github.com/github/hubot/tree/master/docs#getting-started-
with-hubot), go into its directory. Then:

```bash
$ npm install --save hubot-ector
```

Then, add `"hubot-ector"` into the file `external-scripts.json`. The minimal one is:

```json
[ "hubot-ector" ]
```

## Commands
By default, any sentence that does not triggered another command will be replied by the hubot. Also, he will learn it, as a young child learning to speak would.

If you're annoyed by the hubot's verbiage, just use the `hubot shut up` command.
In the other way, if you want him to talk again, just say `hubot speak` (as always, replace `hubot` with the name of the hubot).

If you want that the hubot remember the conversations, use regularly the `save yourself` command.

## ChangeLog

* 2014/08/07: 1.2.0: add "save yourself" command
* 2014/06/21: 1.1.0: add "shut up" and "speak" commands
* 2014/06/20: 1.0.0: First version