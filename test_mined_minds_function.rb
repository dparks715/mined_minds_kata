require 'minitest/autorun'
require_relative 'mined_minds_function.rb'

class TestMMfunction < Minitest::Test 
	def test_one_returns_one()
		assert_equal(1, get_mined_minds_result(1))
	end

	def test_two_returns_two()
		assert_equal(2, get_mined_minds_result(2))
	end

	def test_three_returns_mined()
		assert_equal('mined', get_mined_minds_result(3))
	end

 # tests if factors of 5 1-100 are divisible by 5, returns minds if so
	def test_divisble5_returns_minds()
			y = 0
			x = y += 5

			if x <= 100
		assert_equal('minds', get_mined_minds_result(x))
			else
		end
	end
# checks that 10 retuns TEN!
	def test_10_returns_TEN!()
		assert_equal('TEN!', get_mined_minds_result(10))
	end

	def test_ninetyone_returns_ninetyone()
		assert_equal(91, get_mined_minds_result(91))
	end
end