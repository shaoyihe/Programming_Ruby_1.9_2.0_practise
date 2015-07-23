require_relative("../c0/util")

def test_block(*param)
	yield param
end

p test_block(2,test2: "test2",test1: "test2"){|a,param| p param}

puts "*"*100
def test_block2(&block)
	p block.all_super_class
	p block.call
	p yield "xx"
end

test_block2{|item| "#{item}test"}
# test_block2(Proc.new{|item| "#{item}test_block2"})


puts "*"*100

#lambda

l = lambda { |item| p item }
(1..10).each(&l)

def test_lambda(par)
	(1..10).each(&par)
end

test_lambda(l)
puts "*"*100

x= 40
5.times{|x| puts x}
puts x