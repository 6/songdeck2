require 'sinatra'

get '/' do
  @message = "YO"
  haml :index
end
