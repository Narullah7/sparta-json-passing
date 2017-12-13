require 'json'

class ParseJson
attr_accessor :json_file

def initialize(json_file)
  @json_file = JSON.parse(File.read(json_file))
end



end

run = ParseJson.new('json_exchange_rates.json')

p run.json_file
