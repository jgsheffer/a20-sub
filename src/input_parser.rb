def load_input_file(file_path)
  input_array = []

  File.foreach(file_path) do |line|
    direction, value = line.chomp.split(/\s+/)
    if(value != nil && direction != nil)
      value = value.empty? ? nil : value.to_i
      direction = direction.empty? ? nil : direction

      input_array << { value: value, direction: direction }
    end
  end

  input_array
end

def load_sub_data(data_file = "submarine_kata_input.txt")
  current_dir = File.dirname(__FILE__)
  file_path = File.join(current_dir, "../data/#{data_file}")
  input_data = load_input_file(file_path)
end
