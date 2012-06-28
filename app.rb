class App < Sinatra::Base
  register Sinatra::Contrib

  get '/' do
    @message = "YO"
    haml :index
  end
end
