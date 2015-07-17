require_relative "csv_reader"

csv_reader = CSV_Reader.new
ARGV.each do |file_name|
	puts "load #{file_name}"
	csv_reader.read_from_file(file_name);
end

puts "total_price is #{csv_reader.total_price}"

p csv_reader