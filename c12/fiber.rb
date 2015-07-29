
arr = %W(test one two)

words = Fiber.new do |some|
	puts "enter"
	arr.each_with_index do |w,i|
		p "hello some : #{some} word: #{w} ,index #{i}"
		p "1 : #{Fiber.yield w}, index #{i}"
	end
end

p "2 : #{words.resume 'a'}"
p "3 : #{words.resume 'b'}"