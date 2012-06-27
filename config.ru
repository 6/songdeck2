require 'bundler'
Bundler.setup :default, (ENV['RACK_ENV'] || 'development')

require 'sinatra'
require 'sinatra/contrib'
require 'sinatra/ember'
require 'sprockets'
require 'compass'
require 'sprockets-sass'
require 'bootstrap-sass'
require 'coffee-script'
require 'uglifier'
require 'yui/compressor'

set :root, File.dirname(__FILE__)

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
