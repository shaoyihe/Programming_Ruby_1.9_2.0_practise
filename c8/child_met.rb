class Parent
	def test(*b)
		p b
	end
end	

class Child < Parent
	def test(c,d)
		super
	end
end

child = Child.new
child.test(1,2)