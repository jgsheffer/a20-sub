require 'rspec'
require_relative '../src/sub_runner'

describe 'sub_runner' do

  it 'should return the expected value' do
    position = run("/test/aim_added.txt")
    expect(position).to eq(900)
  end

  it 'should return the expected value for the long input' do
    position = run("/submarine_kata_input.txt")
    expect(position).to eq(2073416724)
  end

  it 'should not move for aiming' do
    position = run("/test/aim_test.txt")
    expect(position).to eq(0)
  end

  it 'should move down when aiming down and forward' do
    position = run("/test/aim_down.txt")
    expect(position).to eq(5)
  end

  # xit 'should move up when aiming up and forward' do
  #   position = run("/test/aim_up.txt")
  #   expect(position).to eq(12)
  # end

  # xit 'subs should not go above the water' do
  #   position = run("/test/flying_sub.txt")
  #   expect(position).to eq(10)
  # end

  # xit 'should ignore incomplete or invalid data' do
  #   position = run("/test/invalid_data.txt")
  #   expect(position).to eq(10)
  # end

end
