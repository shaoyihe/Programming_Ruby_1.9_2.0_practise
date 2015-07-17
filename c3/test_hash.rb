require_relative "hash"
require "test/unit"

word = Word.new
word.read("The problem breaks down into two parts. First, given some textas a string, return a list of words. That sounds like an ar")

p word.word
sort_word = word.word.sort_by{|key ,value| value}
p "*****"
sort_word.last(5).each{|item| p "#{item[0]} : #{item[1]}"}


class WordTest < Test::Unit::TestCase
	def test_empty
		test_word = Word.new		
		assert_equal({}, test_word.read("").word)
	end
end	