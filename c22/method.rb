def test1
	def test2
		p "test2"	
	end
	p "test1"
end

begin
	test2
rescue Exception => e
	p e
end

test1
test2