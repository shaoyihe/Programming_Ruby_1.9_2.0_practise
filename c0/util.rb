def loop_until_nil(init)
	# init = init.class
	result = [init] if init
	result << init if init = yield(init) while init
	result
end


class Object
	def all_super_class
		loop_until_nil(self.class){|_class| _class.superclass}
	end

	
end	


# p 1.all_super_class