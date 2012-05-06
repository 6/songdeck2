require 'bundler'
Bundler.setup :default, (ENV['RACK_ENV'] || 'development')

require 'sinatra'
require 'sinatra/backbone'
require 'sinatra/contrib'
require 'sprockets'
require 'compass'
require 'sprockets-sass'
require 'bootstrap-sass'
require 'coffee-script'
require 'yui/compressor'

set :root, File.dirname(__FILE__)

require './config/sprockets'
require './app'

map '/assets' do
  run settings.sprockets
end

map '/' do
  run App
end
