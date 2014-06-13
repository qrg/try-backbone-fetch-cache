module.exports = class Application extends Chaplin.Application

  initialize: ->
    super
    console.debug 'Application.initialize'

  start: ->
    super
    console.debug 'Application.start'
