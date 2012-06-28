require 'bundler'
Bundler.setup :default, (ENV['RACK_ENV'] || 'development')

require 'sinatra'
require 'sinatra/contrib'
require 'sprockets'
require 'compass'
require 'sprockets-sass'
require 'bootstrap-sass'
require 'coffee-script'
require 'uglifier'
require 'yui/compressor'

set :root, File.dirname(__FILE__)

require './config/sprockets'
require './app' # Require your app with sprockets

guard 'sprockets2', :sprockets => settings.sprockets, :assets_path => "public/test-assets", :gz => false, :digest => false do
  watch(%r{^javascripts/.+$})
  watch('app.rb')
end
