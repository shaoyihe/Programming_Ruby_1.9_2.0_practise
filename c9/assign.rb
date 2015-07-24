require_relative("../c0/util")

def test_up(str, &a)
	puts __method__
	p a
	yield str
end

p test_up("test",&:upcase)

p ('a'..'z').to_a.map(&:upcase).join.send(:downcase)

a = 1
a +=2
puts "a:#{a}"
puts local_variables.map(&:all_super_class)