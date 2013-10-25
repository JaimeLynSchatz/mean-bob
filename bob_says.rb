module BS

	@@bob_says = {
		"chat" => "Just because I'm called 'chat' doesn't mean I want to!",
		"nasty" => "Who are YOU calling 'nasty'?!?",
		"sorry" => "I may accept your apology. I need to think about it.",
		"computer" => "Who you callin' 'Computer', chump? This isn't the Enterprise.",
		"fuck" => "Language! I'll wash your mouth out with soap if you keep that up!",
		"shit" => "Hey, there are preschool toys present!",
		"stupid" => "Mama always said, 'Stupid is as stupid does.' \n\nDo you think Sally Field was typecast?"
	}

	#puts bob_says["chat"]
	
	if @@bob_says.include? "Who"
		puts "Yes, it's there"
	else
		puts "No, it's not."
	end

end