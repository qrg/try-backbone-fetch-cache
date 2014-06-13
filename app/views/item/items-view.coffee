CollectionView = require 'views/base/collection-view'
template = require 'templates/item/items'
ItemView = require 'views/item/item-view'

module.exports = class ItemsView extends CollectionView
  template        : template
  itemView        : ItemView
  listSelector    : '.js-item-views-container'
  autoRender      : true
  fallbackSelector: '.js-fallback'

  initialize: ->
    super
    console.debug 'ItemsView.initialize'

  render: ->
    super
    console.debug 'ItemsView.render'
