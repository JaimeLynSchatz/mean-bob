#  The original very non-DRY (damp?) script was written as part of a screencast video for
#  my application to the Ada Developers Academy
#  I wanted to create a simulation of an AI - not strictly a chat bot (I'm working on that, too),
#  but something more controlled and well, scripted.  
#
#

def listen()
	STDIN.gets.chomp().downcase.gsub(/[^a-z\s]/, '')
end

def skip_line(n)
	n.times do 
		puts ""
    end
end

def type_string(str)
  str.each_char do |c|
  	if c != " " or c != "." or c != ","
  	  sleep 0.1
  	else
  	  sleep 0.5
  	end
  	print c
  end
  print "\n"
end

def slow_scroll()
	10.times do
		sleep 0.05
		puts ""
	end
end

type_string("Will this print the way I want?")

puts "Hi, I'm Bob."
sleep 0.3
puts "And you are...?"
response = STDIN.gets.chomp().downcase.gsub(/[^a-z\s]/, '')
print "\a"
sleep 0.3
print "\a"
skip_line 2
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
skip_line 2
response = STDIN.gets.chomp().downcase.gsub(/[^a-z\s]/, '')
sleep 0.3
skip_line 2
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

listen
skip_line 2
puts "You go, girl!!"
skip_line 1
sleep 0.2
puts "Ok, first question:"
skip_line 1
while true
	puts "1. Why are you the best applicant for Ada?"
	response = listen 
	skip_line 1
	sleep 0.3
	if !response.include? "skip"
		puts "I knew you had an answer for that one."
		break
	end
	print "Ok."
	sleep 0.3
	puts "We'll come back to that one later."
	sleep 0.4
    skip_line 2
    puts "2. Taking a year off of work to learn skills for a new career will be difficult"
    sleep 0.3
    puts "How will you prepare for such an endeavor?"
    listen
    type_string("""First, I've starting finding alternative childcare. ADA starts a little too early for moms who need to drop their kiddos off at school.""")
    type_string("""I'm also investigating alternative funding sources so I can afford to study full time for a year.""")
    type_string("""The best part of my preparations is imagining being able to spend all day, every day, coding.""") 
    puts "\nIt sounds like you've really thought this through.\n"
    sleep 1.0
    skip_line 1
    puts "3. Why are you interested in programming?"
    sleep 0.5
    puts "What have you done to expose yourself to programming so far?"
    listen
    sleep 0.5
    puts "You're going to make me blush..."
    sleep 1.0    
    skip_line 1
    puts "4. What are your professional goals for the next 2 years, the next 5 years?"
    listen
    puts "Wow."
    sleep 0.5
    skip_line 1
    puts "Just don't put me on Jeopardy, ok?."
    listen
    sleep 0.5
    puts "Thanks."
    sleep 1.0
    skip_line 1
    puts "5. Tell us about the last time you made a mistake. If you encountered the situation again, what would you do differently?"
	listen
	sleep 0.5
	puts "Now, how about that first question again:"
	sleep 0.5
	print "."
	sleep 0.5
	print "."
	sleep 0.5
	print ".\n"
	
# "I can't wait to try"	
end #while loop

# puts "Whatever."
puts
sleep 0.8
puts "Those were all the questions!"
sleep 0.4
puts "Good luck with your application."
listen
skip_line 2
puts "Don't worry about your video..."
slow_scroll
puts "   ;)"
slow_scroll
slow_scroll
puts "I think we'll be able to come up with something good."
slow_scroll
puts "Good night..."

# back up the file!
# do we still need this?
# input_file = File.open(trial2_rubyfile.rb).read()

#There's a problem here. I don't know for certain what I did or how to fix it. DOCUMENT!!


# sleep 0.5
# puts
# puts "Boring conversation anyway."
# puts
#  sleep 1.2

