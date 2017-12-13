require 'json'

class ParseJson
  attr_accessor :json_file

  def initialize(json_file)
    @json_file = JSON.parse(File.read(json_file))
  end

  def get_base_value
    @json_file['base']
  end

  def get_date_value
    @json_file['date']
  end

  def get_rates_value
    @json_file['rates']
  end

end
