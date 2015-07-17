class Parent
	protected
		def say
			p "hello"
		end
	private
		def me
			p "i am parent"
		end
end


class Child < Parent
	def say
		super
		p " say from child"
	end
end

child =Child.new
child.say
# child.me	

# p Child.superclass

temp = Child
while temp 
	p temp
	temp = temp.superclass
end