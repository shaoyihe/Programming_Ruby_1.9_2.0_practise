#multi param
def test_method(a, b, d=a+b,*c)
	p a, b,d,c
end

test_method(*(5..10))

puts "*"*100

test_method(*(9..10))
test_method(*[9,10])
puts "*"*100

a= *(1..10)
p a

puts "*"*100