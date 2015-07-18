def loop_until_nil(init)
	# init = init.class
	result = [init] if init
	while init
		temp = yield(init)
		result << temp
		init = temp
	end
	result[0..-2]
end


class Object
	def all_super_class
		loop_until_nil(self.class){|_class| _class.superclass}
	end
end	

