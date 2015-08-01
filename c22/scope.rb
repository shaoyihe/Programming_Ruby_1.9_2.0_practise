for i in 1..2
	a = "test"
	# puts i
end

puts local_variables.map { |e| "#{e.to_s} : "+ eval("#{e.to_s}").to_s }

p "*"*100

class Const
	@@test = "SOME"

	def get_const
		@@test
	end
end	

@@test = "new some"
p Const.new.get_const
	
p "*"*100

puts global_variables.map { |e| "#{e.to_s} : "+ eval("#{e.to_s}.inspect").to_s }