#http://stackoverflow.com/questions/31621358/what-is-the-best-way-to-convert-english-sentences-into-ruby-key-value-pair
def read_discount(file_name)
	File.foreach(file_name) do |line|
		/[^\d]*(\d+)[^\d]*(\d+)/ =~ line
		puts "#{$1}:#{$2}" if $1
	end
end

read_discount("31621358.txt")