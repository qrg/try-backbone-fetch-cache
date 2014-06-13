Model = require 'models/base/model'

module.exports = class Item extends Model
  urlRoot: '/api/items'

  defaults:
    attr1: null
    attr2: null

  initialize: ->
    super
    console.debug 'Model Item.initialize'
