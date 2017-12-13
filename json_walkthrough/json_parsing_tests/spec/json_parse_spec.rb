# require 'json_parse'
require 'spec_helper'

describe 'testing exchange rates' do
  before(:all) do
    @exchange_rates = ParseJson.new('json_exchange_rates.json')
  end

  it 'should be hash' do
    expect(@exchange_rates.json_file).to be_kind_of(Hash)
  end

  it 'The base should always be in EUR' do
    expect(@exchange_rates.get_base_value).to eq("EUR")
  end

  it 'The date should be should return 2017-07-26' do
    expect(@exchange_rates.get_date_value).to eq("2017-07-26")
  end

  it 'check the exchange rate numbers are floats' do
    @exchange_rates.get_rates_value.each do |key,value|
      expect(value).to be_kind_of(Float)
      expect(value).to be > 0
    end
  end


  it 'should contain 31 rates' do
    @key_num = 0
    @value_num = 0

    @exchange_rates.get_rates_value.each do |k,v|
      @key_num += 1
      @value_num += 1
    end

    expect(@key_num).to eq(31)
    expect(@value_num).to eq(31)
  end

  it "date should be in the form of a string" do
    expect(@exchange_rates.get_date_value).to be_kind_of(String)
  end

end
