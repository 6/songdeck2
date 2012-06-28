require './requires'
require './config/sprockets'
require './app'

App.helpers do
  def haml_partial(page, options={})
    haml page, options.merge!(:layout => false)
  end

  def erb_partial(page, options={})
    erb page, options.merge!(:layout => false)
  end
end

map '/assets' do
  run settings.sprockets
end

map '/' do
  run App
end
