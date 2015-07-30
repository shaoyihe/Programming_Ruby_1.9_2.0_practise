require "test/unit"

class TestSome < Test::Unit::TestCase

	def test_str_upper
		source = "abc"
		assert_equal("ABC2", source.upcase)
		assert_equal("ABC2", source.upcase)
	end

	def test_str_lcase
		source = "ABC"
		assert_equal("ab2c", source.downcase)
	end
end	