class MyException <RuntimeError
	attr_reader :message
	def initalitize(message)
		@message = message
	end
end	

p MyException.new("test")
p caller

raise MyException.new("a")