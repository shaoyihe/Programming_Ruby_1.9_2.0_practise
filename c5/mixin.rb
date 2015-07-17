require_relative "price"

class Apple
	include Comparable ,  Price
	attr_reader :name , :price

	def initialize(name , price)
		@name = name
		@price = price
	end

	# def <=> other
	# 	p self
	# 	[@price , @name] <=> [other.price , other.name]
	# end

end	

apple1 = Apple.new("test" , 20)
apple2 =Apple.new("test" ,30)
apple3 =Apple.new("tesa" ,20)

p apple1 <=> apple2
p apple1.between?(apple3, apple2)
p apple2 <=apple1