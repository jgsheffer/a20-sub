require 'rspec'
require_relative '../src/execute'

describe 'execute' do

  it 'should return the expected value' do
    position = run("test_input.txt")
    expect(position).to eq(5)
  end


end
