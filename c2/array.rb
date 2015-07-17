require_relative "book_in_store"

class Array
	def sum
		result = 0.0
		each{|item| result += yield item}
		result
	end
end

