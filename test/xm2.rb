require 'find'



a = Find.find('D:\alibaba\lassen').select{|f| f.end_with?(".xml")}.map do |i|
		i + "test"
	end

p a