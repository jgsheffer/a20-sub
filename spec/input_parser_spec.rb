require 'rspec'
require_relative '../src/input_parser'

describe 'InputParser' do
  sub_data = nil
  before(:each) do
    sub_data = load_sub_data()
  end

  it 'should have the expected number of entried' do
    expect(sub_data.length).to eq(1000)
  end

  it 'should parse the data correctly' do
    expect(sub_data[0][:distance]).to eq(9)
    expect(sub_data[0][:direction]).to eq('forward')
  end
end
