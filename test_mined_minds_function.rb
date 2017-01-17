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

# checks that 15, 30, 45, 60, 75, 90 return mined minds
	def test_divisible_15_returns_minedminds()
		num = 15

		6.times do		
			assert_equal('mined minds', get_mined_minds_result(num))
			num = num + 15
		end
	end

# checks that 5 returns minds
	def test_five_returns_minds()		
			assert_equal('minds', get_mined_minds_result(5))
	end

# checks that 10 retuns TEN!
	def test_10_returns_TEN!()
		assert_equal('TEN!', get_mined_minds_result(10))
	end

# checks 91 returns 91
	def test_ninetyone_returns_ninetyone()
		assert_equal(91, get_mined_minds_result(91))
	end

# checks 37 returns taco tuesday
	def test_thirtyseven_returns_tacotues()
		assert_equal('taco tuesday', get_mined_minds_result(37))
	end
	
# checks 22 returns 22
	def test_22_returns_22()
		assert_equal(22, get_mined_minds_result(22))
	end
end