require_relative "book_in_store"
require_relative "array"
require "csv"

class CSV_Reader

	def initialize
		@book_in_stores = []
	end

	def read_from_file(csv_files)
		CSV.foreach(csv_files , headers:true) do |row|
			@book_in_stores << BookInStore.new(row["isbn"], row["price"])
		end
	end

	def total_price
		@book_in_stores.sum{ |book| book.price }
	end

	def total_price2
		@book_in_stores.inject(0){|total, book| total + book.price}
	end
end	

