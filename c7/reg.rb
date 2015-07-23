require_relative("../c0/util")

p /test/.all_super_class

p /test/=~"atest b"

File.open("../c8/block.rb").each do |line|
	if /def/ =~ line
		puts line
	end
end