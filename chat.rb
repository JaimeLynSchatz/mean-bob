require_relative bob_says.rb


nasty = [
	"Who you callin' 'Computer', Chump? This isn't the Enterprise.",
	"Well, why don't you tell me how you really feel."
	]

computer = "Who you callin' 'Computer', Chump? This isn't the Enterprise. My name is Bob."

def interrupt_bob(response)
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
end

puts "..."
response = gets.chomp().downcase
while !response.include? 'uit' or !response.include? 'xit'

	if bob_says.include? response
		puts bob_says[response]
	else
		response_words = response.split(" ")
		print "Oh, '", response_words[-1], "' you say?\n"
		# add those keywords to bob_says
	
	response = gets.chomp().downcase
	
end #while loop

puts "Whatever."
sleep 3
puts "Boring conversation anyway."
puts

