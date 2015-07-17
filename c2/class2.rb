class BookInStore 
	attr_accessor :isbn ,:price , :test
	def initialize(isbn , price)
		@isbn = isbn
		@price = Float(price)
	end

	def to_s
		"isbn is #{@isbn} , price is #{@price}"
	end

	def price_in_cents
		@price * 100
	end
end	

book1 = BookInStore.new("123456789" , 20)
p book1
p " book1's isbn is #{book1.isbn}"
book1.price *= 20
p " book1's isbn is #{book1.isbn} , price is #{book1.price}"
book1.isbn = "test"
p " book1's isbn is #{book1.isbn} , price is #{book1.price}"
book1.test = "some"
p book1.test
p book1.price_in_cents