arr = [1 , "test" , /a/]
puts arr
puts "arr.class : #{arr.class}"
p arr

puts "***************"

a2 = %w{ 1 2 3 }
p a2
a3 = Array.new(a2)
puts "a3#{a3.inspect}"

puts "**************"
hash = {
	1=> 1,
	"test" => "someone"
}
p hash
puts hash[1]
puts hash["1"]
p hash["1"]

puts "**************"
a5 = %w{ test this is}
p a5
a6 = a5.collect { |e| e +"!" }
p a6
p a5
a7 = a5.collect! { |e| e +"!" }
p a7
p a5