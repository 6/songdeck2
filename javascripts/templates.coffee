T = (name, template) ->
  Ember.TEMPLATES[name] = Ember.Handlebars.compile(template)

T "yo",
"{{#view App.CreateView}}
  <h1>Hello world!</h1>
{{/view}}"
