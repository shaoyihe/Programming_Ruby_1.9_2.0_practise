def yhsj
	len = gets.to_i
	arr = Array.new(len)
	arr.fill do |i|
		Array.new(i+1).fill do |t|
			if i==0 || i==1 || t==0 || t == i
				1
			else
				arr[i-1][t-1]  + arr[i-1][t]
			end
		end
	end
end

puts yhsj.map { |e| e.join(" ") }
