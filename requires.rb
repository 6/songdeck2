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
