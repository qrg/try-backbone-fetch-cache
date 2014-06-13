utils = require 'lib/utils'
Model = require './model'

module.exports = class Collection extends Chaplin.Collection
  # Mixin a synchronization state machine.
  #_(@prototype).extend Chaplin.SyncMachine

  # Use the project base model per default, not Chaplin.Model
  model: Model

  #initialize: ->
  #  super
  #  # Chaplin.SyncMachine events
  #  @on 'request', @beginSync
  #  @on 'sync', @finishSync
  #  @on 'error', @unsync
