set :sprockets, Sprockets::Environment.new(settings.root)

configure do
  settings.sprockets.append_path 'javascripts'
  settings.sprockets.append_path 'stylesheets'
  #settings.sprockets.append_path 'images'
end

configure :production, :test do
  settings.sprockets.css_compressor = YUI::CssCompressor.new
  settings.sprockets.js_compressor = YUI::JavaScriptCompressor.new
end