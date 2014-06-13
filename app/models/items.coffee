Collection = require 'models/base/collection'
Item = require 'models/item'

module.exports = class Items extends Collection
  url  : '/api/items'
  model: Item

  expires   : 1000 * 6 # milli seconds

  initialize: ->
    super
    console.debug 'Collection Items.initialize'
