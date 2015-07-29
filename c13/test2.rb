require "test/unit"

count = 1
class TestSome < Test::Unit::TestCase
	

	def setup
		puts "**#{__method__} "
	end

	def teardown
		puts "**#{__method__} : #{passed?} "
	end

	def test_arr_push
		puts "**#{__method__} "
		arr = []
		arr.push(1)
		assert_equal(1, arr[1] ,"error")
		assert_equal(2, arr[1] ,"error")
	end

	def test_arr_push2
		puts "**#{__method__} "
		arr = []
		arr.push(1)
		assert_nil(arr[1])
	end
end	