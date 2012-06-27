$ ->
  window.App = Ember.Application.create()

  window.App.CreateView = Ember.View.extend
    mouseDown: ->
      alert("hello world")

  MainView = Ember.View.create(
    templateName: "yo"
  ).appendTo("#content")
