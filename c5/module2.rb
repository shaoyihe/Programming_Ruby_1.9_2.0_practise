module Module2

	class Test
		def say_sth(name)
			"hello2 #{name}"	
		end

		def to_s
			"test2"
		end
	end	

end	

#error
#test = Test.new

test = Module2::Test.new
p test