class Fixnum
	alias old_plus +
	def + other
		old_plus(Integer(other))
	end
end	

p 1.class
p 1.+"20000000000000"
p 1.upto(10).to_a

p 1.step(10,3).to_a