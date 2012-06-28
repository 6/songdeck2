require './requires'
require './config/sprockets'
require './app'

guard 'sprockets2', :sprockets => settings.sprockets, :assets_path => "public/test-assets", :gz => false, :digest => false, :clean => false do
  watch(%r{^javascripts/.+$})
  watch('app.rb')
end
