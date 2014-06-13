View = require 'views/base/view'
template = require 'templates/item/item'

module.exports = class ItemView extends View
  tagName   : 'tr'
  template  : template
  autoRender: true

  bindings:
    '.js-bind-attr1': 'attr1'
    '.js-bind-attr2': 'attr2'

  initialize: ->
    super
    console.debug 'ItemView.initialize'

  render: ->
    super
    console.debug 'ItemView.render'
