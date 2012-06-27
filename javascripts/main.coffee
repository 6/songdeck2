test_thing = ->
  echo("YO")

echo = (html) ->
  $("body").append(html)

$ ->
  $("#test-thing").click test_thing
