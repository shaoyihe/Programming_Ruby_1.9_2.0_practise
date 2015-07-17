class BookInStore 
	def initialize(isbn , price)
		@isbn = isbn
		@price = Float(price)
	end

	def to_s
		"isbn is #{@isbn} , price is #{@price}"
	end
end	

book1 = BookInStore.new("test" ,23)
# puts BookInStore.@book_name
# 3.times { |n| p n , book1.isbn }

p book1
puts book1