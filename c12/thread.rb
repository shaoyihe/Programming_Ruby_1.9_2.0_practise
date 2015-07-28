
threads = 5.times.map do |i|
	Thread.new(i) do |i|
		sleep(0.5)
		Thread.current[:test]=i
		puts "thread #{Thread.current.inspect} , id is #{i}"
	end	
end

threads.map(&:join).each{|t| p t[:test]}
