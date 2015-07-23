require_relative("../c0/util")

p /test/.all_super_class

p /test/=~"atest b"

File.open("./reg.rb").each do |line|
	if /p/ =~ line
		puts line
	end
end