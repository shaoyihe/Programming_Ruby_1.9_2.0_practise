require_relative("../c0/util")

p File.new($0).all_super_class

File.open("test.txt", "r+") do |file|
	File.open("test_copy.txt", "w") do |w|
		w.puts "#{Time.now}"
		file.each_with_index do	 |l, i|
			w.puts("#{i}:#{l}") if (2..5).include? i+1
		end	
	end
end

arr = IO.readlines($0)
p arr.reject { |e| e=="\n" }

