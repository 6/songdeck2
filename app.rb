require 'bundler'
Bundler.require

class App < Sinatra::Base
  register Sinatra::AssetPack
  assets {
    serve '/js', from: '/javascripts'
    js :app, '/app.js', [
      '/js/vendor/jquery.js',
      '/js/vendor/underscore.js',
      '/js/vendor/backbone.js',
      '/js/vendor/*.js',
      '/js/*.js'
    ]
  }

  get '/' do
    @message = "YO"
    haml :index
  end
end
