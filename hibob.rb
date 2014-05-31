puts "Yes, I'm Bob. Who are you again?"
print "\a\a\a\a\a"
puts "oh, sorry. I'll be quiet."
puts ""
puts ""
puts ""
response = STDIN.gets.chomp().downcase.gsub(/[^a-z\s]/, '')
puts "What would you like to do today?"
puts "*******************************************************************"
puts "*                                                                 *"
puts "*   1. Play a game                                                *"
puts "*                                                                 *"
puts "*   2. Shut down all the garbage mashers on the detention level   *"
puts "*                                                                 *"
puts "*   3. Apply to ADA                                               *"
puts "*                                                                 *"
puts "*******************************************************************"
response = STDIN.gets.chomp().downcase.gsub(/[^a-z\s]/, '')
puts "You go, girl!"
puts "Ok, first question:"

while !response.include? "exit"
	puts "1. Why are you the best applicant for Ada?"
	STDIN.gets
	puts "Ok."
    puts "2. Taking a year off of work to learn skills for a new career will be difficult. How will you prepare for such an endeavor?"
    STDIN.gets
    puts "Ok."
    puts "3. Why are you interested in programming? What have you done to expose yourself to programming so far?"
    STDIN.gets
    puts "Ok."
    puts "4. What are your professional goals for the next 2 years, the next 5 years?"
    STDIN.gets
    puts "Ok."
    puts "5. Tell us about the last time you made a mistake. If you encountered the situation again, what would you do differently?"
	response_split = response.split(" ")
	
	response = STDIN.gets.chomp().downcase.gsub(/[^a-z\s']/, '')
	
end #while loop

# puts "Whatever."
puts
sleep 0.8

# back up the file!
# do we still need this?
# input_file = File.open(trial2_rubyfile.rb).read()

#There's a problem here. I don't know for certain what I did or how to fix it. DOCUMENT!!


# sleep 0.5
# puts
# puts "Boring conversation anyway."
# puts
#  sleep 1.2

