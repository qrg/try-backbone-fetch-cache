module.exports = do ->
  # $.ajax global default settings
  $.ajaxSetup
    contentType  : 'application/json; charset=utf-8'
    scriptCharset: 'utf-8'
    dataType     : 'json'
    cache        : false

  $.mockjaxSettings = _.extend
    contentType: 'application/json'
    dataType   : 'json'
  , $.mockjaxSettings

  $.mockjax
    url         : '/api/items'
    type        : 'POST'
    responseTime: 1000
    response    : (settings) ->
      data = JSON.parse settings.data
      item =
        attr1: data.attr1
        attr2: data.attr2

      @responseText = JSON.stringify item

  $.mockjax
    url         : '/api/items'
    type        : 'GET'
    responseTime: 1000
    response    : (settings) ->

      items = [
        attr1: 'server data 1'
        attr2: 'server data 2'
      ]

      console.debug 'GET /api/items', items
      @responseText = JSON.stringify items
