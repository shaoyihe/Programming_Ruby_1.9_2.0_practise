arr = Array.new(10 ,true)
#puts arr
p arr
p 1
puts 1

def a(p1 = 1)
	"test#{p1}"
end

a2 = ["test" , "a" , a]
p a2

a3 = Array.new(10) { |i| "a#{i+1}" }
p a3
