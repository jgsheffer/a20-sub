require_relative './input_parser'
current_x = 0
current_y = 0
minimum_depth = 0
maximum_distance = 0

load_sub_data.each do |data|
  direction = data[:direction]
  distance = data[:distance]

  if direction == "down"
    current_x -= 1
    minimum_depth = [minimum_depth, current_x].min
  elsif direction == "up"
    current_x += 1
    current_x = [current_x, 0].max
  elsif direction == "forward"
    current_y += distance
    maximum_distance = [maximum_distance, current_y].max
  end
end

# Output visualization in ASCII characters
puts "Current X: #{current_x}"
puts "Current Y: #{current_y}"
puts "Minimum Depth: #{minimum_depth}"
puts "Maximum Distance: #{maximum_distance}"
