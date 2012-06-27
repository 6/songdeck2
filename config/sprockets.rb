sprockets = Sprockets::Environment.new(settings.root)

configure do
  sprockets.append_path 'javascripts'
  sprockets.append_path 'stylesheets'
  #sprockets.append_path 'images'
end

configure :production, :test do
  sprockets.css_compressor = YUI::CssCompressor.new
  #sprockets.js_compressor = YUI::JavaScriptCompressor.new
end

set :sprockets, sprockets
