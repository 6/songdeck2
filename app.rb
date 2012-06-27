class App < Sinatra::Base
  register Sinatra::Contrib
  register Sinatra::Ember
  ember {
    templates '/jst.js', ['/templates/*.hbs']
  }

  get '/' do
    @message = "YO"
    haml :index
  end
end
