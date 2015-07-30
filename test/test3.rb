th = []
30.times do |host|
    th << Thread.new do
    	p "test"
        system("help")
    end
end
p th
th.each {|t| t.join}