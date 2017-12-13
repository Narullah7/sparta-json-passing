require 'json'

json = File.read('json_example.json')

json_parse = JSON.parse(json)

p json_parse['colors'].first
