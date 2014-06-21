chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'ector', ->
  beforeEach ->
    @robot =
      catchAll: sinon.spy()
      respond: sinon.spy()

    require('../src/ector')(@robot)

  it 'registers a catchAll listener', ->
    expect(@robot.catchAll).to.have.been.calledWith()

  it 'registers a respond listener', ->
    expect(@robot.respond).to.have.been.calledWith()
