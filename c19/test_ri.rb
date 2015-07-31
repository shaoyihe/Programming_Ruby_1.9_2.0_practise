
class TestRi
	# to 
	# <em>sth</em>
	def self.upper sth
		sth.upcase
	end

	def initalitize name
		@name = name
	end

	# 返回当前名字
	def name
		@name
	end

end	


TestRi.new