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

	def test_five_returns_minds()		
			assert_equal('minds', get_mined_minds_result(5))
	end

# checks that numbers divisible by 15 return 'mined minds'
	def test_divisible_15_returns_minedminds()
		num = 15

		6.times do		
			assert_equal('mined minds', get_mined_minds_result(num))
			num = num + 15
		end
	end

# checks that numbers divisible by 5 but, not 15 return 'mined minds'
	def test_divisible_5_returns_minedminds()
		num = 5

		until num > 100 do
			if num % 5 == 0 && num % 3 == 0
				num = num + 5
				next
			end
			assert_equal('minds', get_mined_minds_result(num))
			num = num + 5
		end
	end

# checks that numbers divisible by 3 but, not 15 return 'mined'
	def test_divisible_3_returns_mined()
		num = 3

		until num > 100 do
			if num % 5 == 0 && num % 3 == 0
				num = num + 3
				next
			end
			assert_equal('mined', get_mined_minds_result(num))
			num = num + 3
		end
	end

# checks 30 returns 'mined minds'
	def test_30_returns_minedminds()
		assert_equal('mined minds', get_mined_minds_result(30))
	end

# checks 91 returns 91
	def test_ninetyone_returns_ninetyone()
		assert_equal(91, get_mined_minds_result(91))
	end
	
# checks 22 returns 22
	def test_22_returns_22()
		assert_equal(22, get_mined_minds_result(22))
	end
end