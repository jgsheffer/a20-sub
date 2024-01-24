require_relative './input_parser'

# Runs the submarine simulation using the provided data file.
# The function reads the data from the file and updates the submarine's position based on the given directions and distances.
# It calculates the maximum depth and maximum distance reached by the submarine.
# Finally, it prints the current position, maximum depth, maximum distance, and the product of current depth and distance.
#
# @param data_file [String] The path to the data file (default: "submarine_kata_input.txt")
# @return [Integer] The product of current depth and distance

def run(data_file="submarine_kata_input.txt")
  current_y = 0
  # 6
  current_x = 0
  # 2
  aim = 0
# 1

  load_sub_data(data_file).each do |data|
    direction = data[:direction]
    value = data[:value]
    puts "Direction: #{direction}, Value: #{value}"
    if direction == "down"
      aim += value
    elsif direction == "up"
      aim -= value
    elsif direction == "forward"
      current_x += value
      current_y += aim * value
    else
      throw "Invalid direction: #{direction}"
    end
  end

  position = current_y * current_x
  puts "\n:::::::::::::::::::::::::"
  puts "Using Data file: #{data_file}"
  puts "Current X: #{current_x}"
  puts "Current Y: #{current_y}"
  puts "Current Depth x Current Distance: #{position}"
  puts ":::::::::::::::::::::::::"
  return position
end
