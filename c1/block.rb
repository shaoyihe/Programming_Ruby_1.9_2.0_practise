a = %w{ test 1 3 4 }
p a
a.each{ |item,next2| print item , " ", next2}
# a.each_char { |chr| p chrnext2 }
puts
puts "*****#{Class.class}"

def say_something
	a = %w{test a one}
	a.each{|item| yield item}
end

say_something{
	|item| puts "test" + item
}

say_something do
	|i| puts "next#{i}"
end	