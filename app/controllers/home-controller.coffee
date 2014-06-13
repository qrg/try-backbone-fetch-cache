Controller = require 'controllers/base/controller'
HomeView = require 'views/home/home-view'
ItemsView = require 'views/item/items-view'
Items = require 'models/items'
mediator = require 'mediator'

module.exports = class HomeController extends Controller

  initialize: ->
    super
    console.debug 'HomeController.initialize'
    @collection = new Items()

    mediator.subscribe 'items.clear', =>
      @collection.clear()

  index: ->
    console.debug 'HomeController.index'

    @view = @reuse 'home', HomeView, collection: @collection

    itemsView = new ItemsView
      collection: @collection
      container : @view.$('.js-items-view-container')
      autoRender: true

    @view.subview 'itemsView', itemsView
    @collection.fetch(
      cache  : true
      expires: 10 # seconds | https://github.com/mrappleton/backbone-fetch-cache/blob/master/backbone.fetch-cache.js#L108
    ).done (models) ->
      console.log models
