require 'rspec'
require_relative '../src/sub_runner'

describe 'sub_runner' do

  it 'should return the expected value' do
    position = run("/test/happy.txt")
    expect(position).to eq(10)
  end

  it 'subs should not go above the water' do
    position = run("/test/flying_sub.txt")
    expect(position).to eq(10)
  end

  it 'should ignore incomplete or invalid data' do
    position = run("/test/invalid_data.txt")
    expect(position).to eq(10)
  end
end
