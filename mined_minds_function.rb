def get_mined_minds_result(number)
	if number == 10
		'TEN!'
	elsif number % 3 == 0 && number % 5 == 0
		'mined minds'
	elsif number == 5
		'minds'
	elsif number == 3
		'mined'
	elsif number == 37
		'taco tuesday'
	else
		number
	end
end

#test that 3 returns mined
#5 returns minds
#3 and 5 mined minds