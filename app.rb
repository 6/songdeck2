class App < Sinatra::Base
  register Sinatra::Contrib

  get '/' do
    haml :index
  end
end
