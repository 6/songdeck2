class App < Sinatra::Base
  register Sinatra::Contrib
  register Sinatra::JstPages
  serve_jst '/jst.js'

  get '/' do
    @message = "YO"
    haml :index
  end
end
