module Bob_Greeting

	current_time = Time.new
	if current_time.hour >= 4 and current_time.hour < 12
		time_of_day = 'morning!'
	elsif current_time.hour >= 12 and current_time.hour < 17
		time_of_day = 'afternoon!'
	elsif current_time.hour <= 23
		time_of_day = 'evening!'
	else
		time_of_day = 'grief! You\'re up late! Or getting up really early...'
	end

	puts "Good #{time_of_day} I'm Bob."

end