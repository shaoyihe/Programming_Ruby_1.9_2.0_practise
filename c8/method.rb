p 1.even?

str = " test abv "
p str.upcase , str

p "*"*10
str = " test abv "
p str.upcase , str

p "*"*10

def test_met(first="test", *second, third)
	p first , "#{second}:#{second.class}" , third
end

test_met("a" , "b", "c", (1..10), 2)

test_met("ax","bx")