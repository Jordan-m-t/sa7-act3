require 'csv'

def csv_arrary_of_hashes(file_path)
  csv_data = CSV.read(file_path, headers: true)
  csv_data.map(&:to_h)
end

file_path = 'data.csv'
result = csv_arrary_of_hashes(file_path)
# splitting each arrary to a new line for
result.each do |hash|
    puts hash.inspect
    puts ''
end
