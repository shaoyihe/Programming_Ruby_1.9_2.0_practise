puts __ENCODING__

p Encoding.methods - Object.methods
result =  Encoding.list.map(&:names).map do |base_name, *rest|
		if rest.empty?
			base_name
		else
			"#{base_name} (#{rest.join(', ')})"
		end
	end

puts result	

