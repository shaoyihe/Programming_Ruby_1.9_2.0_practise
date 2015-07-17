a = {"one" => 1 ,"two" => 2}
p a
b = Hash[a]
p b
p a==b
c =Hash.new(1)
p c["a"]

puts "********"

class Word
	def initialize
		@word = Hash.new(0)
	end

	def read(word_)
		word_.downcase.scan(/\w+/).each{ |item| @word[item] += 1 }
		p @word.sort_by{|key, value| value}
		self	
	end

	def to_s
		@word
	end
end	

word = Word.new
p word.read("test test 2 3 4").read("test test 2 3 4")
puts word.to_s
