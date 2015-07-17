module Price
	def <=> other
		p self
		[@price , @name] <=> [other.price , other.name]
	end
end	