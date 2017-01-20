require 'minitest/autorun'
require_relative 'mined_minds_function.rb'

class TestMMfunction < Minitest::Test

	def test_all()
		num = 1

		until num > 100 do	
			if num % 5 == 0 && num % 3 == 0	
				assert_equal('mined minds', get_mined_minds_result(num))

			elsif num % 3 == 0
				assert_equal('mined', get_mined_minds_result(num))

			elsif num % 5 == 0
				assert_equal('minds', get_mined_minds_result(num))

			else
				assert_equal(num, get_mined_minds_result(num))
			end
			num = num + 1
		end

	end

end