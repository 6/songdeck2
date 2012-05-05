require 'bundler'
Bundler.require

class App < Sinatra::Base
  register Sinatra::AssetPack
  assets {
    serve '/js', from: '/javascripts'
    serve '/css', from: '/stylesheets'
    js :app, '/app.js', [
      '/js/vendor/jquery.js',
      '/js/vendor/underscore.js',
      '/js/vendor/backbone.js',
      '/js/vendor/*.js',
      '/js/*.js'
    ]
    css :app, '/app.css', [
      '/css/vendor/*.css',
      '/css/*.css'
    ]
    js_compression :yui
    prebuild ENV['RACK_ENV'] == 'production'
  }

  get '/' do
    @message = "YO"
    haml :index
  end
end
