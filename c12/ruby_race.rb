p 500.times.map(&:succ).inject(&:+)

result = 0

thread = lambda do |i| 
	Thread.new(i) do |i|
		local = result + 1 + i
		p "#{local} " if local % 200 == 0
		result = local
	end
end

#normal
threads = 500.times.map(&thread)
threads.each(&:join)
p result

p "*"*100
#lock
mutex = Mutex.new
result = 0

thread = lambda do |i| 
	Thread.new(i) do |i|
		mutex.lock
		local = result + 1 + i
		p "#{local} " if local % 200 == 0
		result = local
		mutex.unlock
	end
end

#normal
threads = 500.times.map(&thread)
threads.each(&:join)
p result