exports.config =
# See http://brunch.io/#documentation for docs.

  paths:
    watched: [
      'app'
      'api'
    ]

  conventions:
    assets: (path) ->
      # config - Brunch asset filter - Stack Overflow http://stackoverflow.com/questions/18837232/brunch-asset-filter
      (not /^bower_components/.test path) and /assets(\/|\\)/.test path

  files:
    javascripts:
      joinTo:
        'javascripts/app.js'     : /^app/
        'javascripts/vendor.js'  : /^bower_components/
        'javascripts/api.js': /^api/
      order :
        before: [
          'bower_components/modernizr/modernizr.js'
          'bower_components/jquery/dist/jquery.js'
          'bower_components/lodash/dist/lodash.js'
        ]
        after : [
          'bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/affix.js'
          'bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/alert.js'
          'bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/button.js'
          'bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/carousel.js'
          'bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/collapse.js'
          'bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/dropdown.js'
          'bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/tab.js'
          'bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/transition.js'
          'bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/scrollspy.js'
          'bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/modal.js'
          'bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/tooltip.js'
          'bower_components/bootstrap-sass-official/vendor/assets/javascripts/bootstrap/popover.js'
        ]

    stylesheets:
      joinTo:
        'stylesheets/app.css': 'app/styles/app.sass'

    templates:
      joinTo: 'javascripts/app.js'

  plugins:
    autoprefixer:
      browsers: [
        'last 1 version'
        '> 5%'
        'ie 9'
      ]
    sass        :
      debug: 'comments' # or set to 'debug' for the FireSass-style output

  server:
    indexPath: 'public/index.html'

  onCompile: (generatedFiles) ->
    console.log generatedFiles.map (f) -> f.path
