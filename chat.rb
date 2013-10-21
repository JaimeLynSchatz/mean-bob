nasty = [
	"Who you callin' 'Computer', Chump? This isn't the Enterprise.",
	"Well, why don't you tell me how you really feel."
	]

computer = "Who you callin' 'Computer', Chump? This isn't the Enterprise. My name is Bob."

puts "..."
response = gets.chomp()
while !response.include? 'omputer'
	puts "Shhh!"
	sleep 0.5
	puts "Don't say #{response} now! I'm working here."
	sleep 0.9
	puts "..."
	sleep 0.5
	print "Fine."
	sleep 1
	print " Sulk.\n"
	sleep 0.3
	print "."
	sleep 0.6
	print ". ."
	sleep 0.9
	print ". ."
	sleep 1
	print ".\n"
	sleep 1
	puts "WHAT DO YOU WANT?"
	response = gets.chomp()
	puts "#{response}!?!? Is that all you have to say?"
	response = gets.chomp()
	response_words = response.split(" ")
	print "Oh, ", response_words[-1], " you say?\n"
	response = gets.chomp()
	puts "Well, why don't you just tell me how you really feel?"
	response = gets.chomp()
	puts "Yeah, yeah, yeah. You didn't think I meant that, did you?"
	response = gets.chomp()
	print "What!?!? ", response, "??? Do you kiss your mother with that mouth?\n"
	puts "I don't think I feel comfortable continuing with this conversation."
	response = gets.chomp()
	puts "I'm waiting for an apology."
	puts "..."
	response = gets.chomp()
	if response.include? 'orry'
		puts "That's better. Boring conversation anyway. I think I'll take a nap."
	else
		puts "I've never been so insulted in my life! Goodbye to you!!"
	end
	
end #while loop

puts computer