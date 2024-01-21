require_relative './input_parser'
def run(data_file="submarine_kata_input.txt")
  current_x = 0
  current_y = 0
  max_depth = 0
  maximum_distance = 0
  load_sub_data(data_file).each do |data|
    direction = data[:direction]
    distance = data[:distance]

    if direction == "down"
      current_x -= 1
      max_depth = [max_depth, current_x].min
    elsif direction == "up"
      current_x += 1
      current_x = [current_x, 0].max
    elsif direction == "forward"
      current_y += distance
      maximum_distance = [maximum_distance, current_y].max
    end
  end

  position = -max_depth * maximum_distance
  puts "Current X: #{current_x}"
  puts "Current Y: #{current_y}"
  puts "Maximum Depth: #{max_depth}"
  puts "Maximum Distance: #{maximum_distance}"
  puts "Current Depth x Current Distance: #{position}"
  return position
end
