Application = require 'application'
routes = require 'routes'

$ ->
  console.debug 'initialize'

  window.App = new Application {
    title           : 'Try backbone-fetch-cache with Chaplin - qrg sandbox',
    controllerSuffix: '-controller',
    routes
  }
