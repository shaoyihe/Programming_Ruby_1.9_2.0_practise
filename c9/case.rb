while test = gets
	result=	case test
			when /^a/ then
				"i am a"
			when /a$/ then
				"i am  end a"
			else 
				"other"
			end
	puts "result is #{result}"		
end

