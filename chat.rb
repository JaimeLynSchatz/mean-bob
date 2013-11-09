# we're still working out this program's parameters

require_relative 'bob_greeting.rb'
require_relative 'bob_says.rb'
include BS
include Bob_Greeting

# user inputs name of file for log of known words, including 
# newly learned in this session
input_file = ARGV[0] || 'default_input_file.rb'
output_file = ARGV[1] || 'default_output_file.rb'

nasty = [
	"Who you callin' 'Computer', Chump? This isn't the Enterprise.",
	"Well, why don't you tell me how you really feel."
	]

computer = "Who you callin' 'Computer', Chump? This isn't the Enterprise. My name is Bob."

def new_log(log_filename)
	log_file = File.open(log_filename, "w")
	return log_file
end

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

VOWELS = "aeiou"

puts "..."
response = STDIN.gets.chomp().downcase.gsub(/[^a-z\s]/, '')
while !response.include? "exit"
	
	# setting up starting variables for conversation
	understood = false
	subject_pronoun = "you"
	object_pronoun = "you"
	
	response_split = response.split(" ")
	
	if response_split[0..2].include? "you"
		subject_pronoun == "I"
	end
	
	for word in response_split
			
		if @@bob_says.include? word
			understood = true
			puts @@bob_says[word]
		end
	end
	
	if !understood
		puts "I don't understand you."
		# add those keywords to bob_says
		response_split.reverse_each { |new_word|
			puts "\nWhat does #{new_word} mean?"
			puts "Type 'later' if you don't want to teach me that word right now."
			definition = STDIN.gets.chomp()
			if definition == "later"
				next
			else
				if VOWELS.include? new_word
					article = "an"
				else
					article = "a"
				end
				puts "So #{article} #{new_word} is #{definition}. Thanks."
				@@bob_says[new_word] = definition
			end
		}
		
		# I don't think we need this anymore
		# for word in response_split
		# 	@@bob_says[word] = response
		# end
	end
	
	response = STDIN.gets.chomp().downcase.gsub(/[^a-z\s']/, '')
	
end #while loop

puts "Whatever."
puts
sleep 0.8
for phrase in @@bob_says
	puts "#{phrase}: #{@@bob_says[phrase]}"
end

# back up the file!
# do we still need this?
# input_file = File.open(trial2_rubyfile.rb).read()

#There's a problem here. I don't know for certain what I did or how to fix it. DOCUMENT!!
File.open(output_file, 'w') { |f|
	output = "module BS\n\n\t@@bob_says =\n" + @@bob_says.to_s + "\n\nputs 'Hello there, I\\'m Bob.'\n\nend"
	f.write(output)
}

sleep 0.5
puts
puts "Boring conversation anyway."
puts
sleep 1.2

