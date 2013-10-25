require_relative 'bob_says'
include BS

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
response = gets.chomp().downcase.gsub(/[^a-z\s]/, '')
while !response.include? "exit"
	
	understood = false
	
	response_split = response.split(" ")
	for word in response_split
		if @@bob_says.include? word
			puts @@bob_says[word]
			understood = true
		end
	end
	
	if !understood
		print "Oh, '", response, "' you say?\n"
		# add those keywords to bob_says
		for word in response_split
			@@bob_says[word] = response
		end
	end
	
	response = gets.chomp().downcase.gsub(/[^a-z\s]/, '')
	
end #while loop

puts "Whatever."
puts
sleep 1.5
puts "Boring conversation anyway."
puts
sleep 2

