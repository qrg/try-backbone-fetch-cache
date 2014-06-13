View = require 'views/base/view'
template = require 'templates/home/home'
mediator = require 'mediator'

module.exports = class HomeView extends View
  container: '#main'
  className: 'home-view'
  template : template

  events:
    'click .js-write'    : 'write'
    'click .js-clear'    : 'clear'
    'click .js-hideAlert': 'hideAlert'

  initialize: ->
    super
    console.debug 'HomeView.initialize'

  write: ->
    console.debug 'HomeView.write'

    a1 = @$('.js-attr1Input').val()
    a2 = @$('.js-attr2Input').val()

    unless a1 is '' or a2 is ''
      @hideAlert()
      console.debug 'attr1', a1
      console.debug 'attr2', a2

      @collection.create
        attr1: a1
        attr2: a2

      return

    console.error 'attribute 1 or 2 is empty.'
    @showAlert()

    return

  clear: ->
    console.debug 'HomeView.clear'
    @hideAlert()
    mediator.publish 'items.clear'

  showAlert: ->
    console.debug 'HomeView.showAlert'
    @$('.alert').removeClass('hidden').addClass('in')

  hideAlert: ->
    console.debug 'HomeView.hideAlert'

    $e = @$('.alert')
    hasTransition = $.support.transition and $e.hasClass 'fade'

    # hide after waiting css transition end event
    if hasTransition
      $e.removeClass('in').one $.support.transition.end, (event) ->
        $e.addClass 'hidden'

      return

    $e.removeClass 'in'
    .addClass 'hidden'
