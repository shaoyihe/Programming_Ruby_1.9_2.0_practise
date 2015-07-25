require_relative("../c0/util")

p SyntaxError.new.all_super_class

# eval("x")

def p_exception
	begin
		eval("x")
	rescue Exception => e
		puts $! == e
		p e.backtrace
		raise
	ensure
		puts "you are wrong!"	
	end
end

p_exception 