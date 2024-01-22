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
  current_x = 0
  max_depth = 0
  maximum_distance = 0
  load_sub_data(data_file).each do |data|
    direction = data[:direction]
    distance = data[:distance]
    if direction == "down"
      current_y -= distance
      max_depth = (current_y < max_depth) ? current_y : max_depth
    elsif direction == "up"
      current_y += distance
      current_y = (current_y > 0) ? 0 : current_y
    elsif direction == "forward"
      current_x += distance
      maximum_distance = current_x
    end
  end

  position = -current_y * current_x
  puts "\n:::::::::::::::::::::::::"
  puts "Using Data file: #{data_file}"
  puts "Current X: #{current_x}"
  puts "Current Y: #{current_y}"
  puts "Maximum Depth: #{max_depth}"
  puts "Maximum Distance: #{maximum_distance}"
  puts "Current Depth x Current Distance: #{position}"
  puts ":::::::::::::::::::::::::"
  return position
end
