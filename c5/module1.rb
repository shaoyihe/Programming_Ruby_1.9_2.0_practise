module Module1

	class Test
		def say_sth(name)
			"hello #{name}"	
		end

		def to_s
			"test"
		end
	end	

end	

#error
#test = Test.new

test = Module1::Test.new
p test