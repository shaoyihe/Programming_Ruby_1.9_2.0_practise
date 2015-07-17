class BookInStore
	attr_accessor  :isbn
	attr_reader	  :price	

	def initialize(isbn , price)
		@isbn = isbn
		@price = Float(price)
	end
end	

p BookInStore