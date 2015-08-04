class Test
	@var = 99

	def self.value_of_var
		p self
		@var
	end

	def var
		p self
		@var
	end
end

p Test.value_of_var 
p Test.new.var