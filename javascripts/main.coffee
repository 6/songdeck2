test_thing = ->
  echo(JST['hello']({name: "Peter G", age: "23"}))

echo = (html) ->
  $("body").append(html)

$ ->
  $("#test-thing").click test_thing
