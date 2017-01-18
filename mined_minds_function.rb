def get_mined_minds_result(number)
	
	if number % 5 == 0 && number % 3 == 0
		'mined minds'
	elsif number % 5 == 0
		'minds'
	elsif number % 3 == 0
		'mined'
	else
		number
	end
end