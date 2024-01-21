def load_input_file(file_path)
  input_array = []

  File.foreach(file_path) do |line|
    direction, distance = line.chomp.split(/\s+/)
    distance = distance.empty? ? nil : distance.to_i
    direction = direction.empty? ? nil : direction

    input_array << { distance: distance, direction: direction }
  end

  input_array
end

def load_sub_data()
  current_dir = File.dirname(__FILE__)
  file_path = File.join(current_dir, '../data/submarine_kata_input.txt')
  input_data = load_input_file(file_path)
end
