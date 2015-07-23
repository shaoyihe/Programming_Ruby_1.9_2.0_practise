require_relative("../c0/util")

p /test/.all_super_class

p /test/=~"atest b"

File.foreach("./reg.rb").with_index do |line, index|
	if /p/ =~ line
		puts "#{index} : #{line}"
	end
end

puts "*"* 100

target = "some test text"
p target.sub(/[a-z]+/,"a")
p target.gsub(/\s/,"a")
p target.gsub(/[a-z]+/){|find| find + String(1)}

puts "*"*100

