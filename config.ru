require 'bundler'
Bundler.require

set :root, File.dirname(__FILE__)

require './config/sprockets'
require './app'

map '/assets' do
  run settings.sprockets
end

map '/' do
  run App
end
