module.exports = class Controller extends Chaplin.Controller

  initialize: ->
    super
    console.debug 'Controller.initialize'
