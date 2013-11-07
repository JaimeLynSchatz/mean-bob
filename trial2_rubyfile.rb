module BS

	@@bob_says =
{"chat"=>"Just because I'm called 'chat' doesn't mean I want to!", "nasty"=>"Who are YOU calling 'nasty'?!?", "sorry"=>"I may accept your apology. I need to think about it.", "computer"=>"Who you callin' 'Computer', chump? This isn't the Enterprise.", "fuck"=>"Language! I'll wash your mouth out with soap if you keep that up!", "shit"=>"Hey, there are preschool toys present!", "stupid"=>"Mama always said, 'Stupid is as stupid does.' \n\nDo you think Sally Field was typecast?", "jaime"=>"you", "im"=>"you are", "hi"=>"Hello.", "bob"=>"I", "yes"=>"affirmative", "learn"=>"gain knowlegde", "like"=>"enjoy or seek out", "you"=>"Bob"}

current_time = Time.new
if current_time.hour >= 4 and current_time.hour < 17
	time_of_day = 'morning!'
elsif current_time.hour <= 23
	time_of_day = 'evening!'
else
	time_of_day = 'grief! You\'re up late! Or getting up really early...'
end

puts "Good #{time_of_day} I'm Bob."

end