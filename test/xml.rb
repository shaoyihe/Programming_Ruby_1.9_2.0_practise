require 'find'



a = Find.find('D:\alibaba\lassen').select{|f| f.end_with?(".xml")}.map do |xml|
		File.foreach(xml) do |line|
			if line.include?(" test=") and /[^"=!]+=[^"=]+/=~line
				p "#{xml} : #{line}"
			end
		end
	end.reject(&:nil?)

p a
