#  The original very non-DRY (damp?) script was written as part of a screencast video for
#  my application to the Ada Developers Academy
#  I wanted to create a simulation of an AI - not strictly a chat bot (I'm working on that, too),
#  but something more controlled and well, scripted.  
#
#
puts "Hi, I'm Bob."
sleep 0.3
puts "And you are...?"
response = STDIN.gets.chomp().downcase.gsub(/[^a-z\s]/, '')
print "\a"
sleep 0.3
print "\a"
puts ""
puts ""
puts "WELCOME BACK, JAIME!"
puts ""
puts ""
puts "            **         **            "
puts "           *   *      *   *          "
puts "           * * *      * * *          "
puts "           *   *      *   *          "
puts "            **         **            "
puts "                   -                 "
puts "        *                      *     "
puts "         *                    *      "
puts "          * * * * * * * * * *        "
puts "           *               *         "
puts "            *             *          "
puts "             * * * * * * *           "     
puts ""
puts ""
print "\a"
sleep 0.2
print "\a\a"
response = STDIN.gets.chomp().downcase.gsub(/[^a-z\s]/, '')
puts "oh, sorry. I'll be quiet."
sleep 0.5
puts ""
puts ""
response = STDIN.gets.chomp().downcase.gsub(/[^a-z\s]/, '')
sleep 0.3
puts ""
puts ""
puts "What would you like to do today?"
puts "*******************************************************************"
puts "*                                                                 *"
puts "*   1. Play a game                                                *"
puts "*                                                                 *"
sleep 0.2
puts "*   2. Shut down all the garbage mashers on the detention level   *"
puts "*                                                                 *"
sleep 0.2
puts "*   3. Apply to ADA                                               *"
puts "*                                                                 *"
puts "*******************************************************************"

def listen()
	STDIN.gets.chomp().downcase.gsub(/[^a-z\s]/, '')
end

listen
puts "You go, girl!"
puts ""
sleep 0.2
puts "Ok, first question:"

while !response.include? "exit" or !response.include? "thanks"
	puts "1. Why are you the best applicant for Ada?"
	response = listen 
	print "Ok.\n"
	sleep 0.3
	if !response.include? "skip"
		puts "I knew you had an answer for that one."
		break
	end
	print "We'll come back to that one later.\n"
	sleep 0.4
    puts "2. Taking a year off of work to learn skills for a new career will be difficult"
    sleep 0.3
    puts "How will you prepare for such an endeavor?"
    listen
    puts "\nIt sounds like you've really thought this through.\n"
    sleep 1.0
    puts ""
    puts "3. Why are you interested in programming?"
    sleep 0.5
    puts "What have you done to expose yourself to programming so far?"
    listen
    sleep 0.5
    puts "You're going to make me blush..."
    sleep 1.0
    puts ""
    puts "4. What are your professional goals for the next 2 years, the next 5 years?"
    listen
    puts "Wow."
    sleep 0.5
    puts ""
    puts "Just don't put me on Jeopardy, ok?."
    listen
    sleep 0.5
    puts "Thanks."
    sleep 1.0
    puts ""
    puts "5. Tell us about the last time you made a mistake. If you encountered the situation again, what would you do differently?"
	sleep 0.5
	puts "Now, how about that first question again:"
	sleep 0.5
	print "."
	sleep 0.5
	print "."
	sleep 0.5
	print "."
	
end #while loop

# puts "Whatever."
puts
sleep 0.8
puts "Good night, Jaime."
sleep 0.4
puts "Good luck with your application."

# back up the file!
# do we still need this?
# input_file = File.open(trial2_rubyfile.rb).read()

#There's a problem here. I don't know for certain what I did or how to fix it. DOCUMENT!!


# sleep 0.5
# puts
# puts "Boring conversation anyway."
# puts
#  sleep 1.2

