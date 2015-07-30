

module TestHe
	attr_reader :test_method

	def self.method_added par
		@@test_method ||= []
		@@test_method<< par
	end

	def test
		
	end

end

p TestHe.test_method

