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
  	if c == " " or c == "," or c =="." or c == "!" or c == "e"
  	  sleep 0.2
  	elsif c == "e"
  	  sleep 0.09
  	end
  	print c
  end
  print "\n"
end
# type_string("this is a test of the type string function. How does it look? !! eeven now?")

def slow_scroll()
	10.times do
		sleep 0.05
		puts ""
	end
end

puts ">> HI, I AM BOB"
sleep 0.2
puts ">> AND YOU ARE...?"
response = STDIN.gets.chomp().downcase.gsub(/[^a-z\s]/, '')
skip_line 2
puts ">> WELCOME BACK, JAIME!"
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
puts ">> I MISSED YOU!"
listen
sleep 0.5
skip_line 2
puts ">> WHAT WOULD YOU LIKE TO DO TODAY?"
puts "*******************************************************************"
puts "*                                                                 *"
puts "*   1. Play a game                                                *"
puts "*                                                                 *"
sleep 0.2
puts "*   2. SHUT DOWN ALL THE GARBAGE MASHERS ON THE DETENTION LEVEL!  *"
puts "*                                                                 *"
sleep 0.2
puts "*   3. Apply to ADA                                               *"
puts "*                                                                 *"
puts "*******************************************************************"

listen
skip_line 2
puts ">> YOU GO, GIRL!!"
skip_line 1
sleep 0.2
puts ">> OK, FIRST QUESTION:"
skip_line 1
while true
             puts "*****************************************"
	puts "1. Why are you the best applicant for Ada?"
             puts "*****************************************"
	response = listen 
	skip_line 1
	sleep 0.2
	if !response.include? "skip"
            type_string("""Well, Bob. I'm not. """)
            sleep 0.5
            type_string("""I'm not **the** best applicant.""")
            sleep 0.3
            skip_line 1
            type_string("""Seattle is positively brimmming with brilliant women who will make great software develpers. """)
            sleep 0.2
            type_string("""But there's no-one out there who wants it more than I.""")
            sleep 0.2 
            type_string("""And there's no-one who will work harder. I want to make my kids proud when they answer 'what does your mom do.'""")
            skip_line 1
            sleep 0.2
            type_string("""ADA will help me do that.""")
	     sleep 0.3
            skip_line 1
            puts ">> I KNEW YOU HAD AN ANSWER FOR THAT ONE."
	     break
	end
	print ">> OK."
	sleep 0.2
	puts ">> WE'LL COME BACK TO THAT ONE LATER."
	sleep 0.3
    skip_line 2
    puts "***********************************************************************"
    puts "2. Taking a year off of work to learn skills for a new career will be difficult"
    sleep 0.2
    puts "How will you prepare for such an endeavor?"
    puts "***********************************************************************"
    listen
    type_string("""First, I've started finding alternative childcare. ADA starts a little too early for moms who need to drop their kiddos off at school.""")
    sleep 0.5
    type_string("""I'm also investigating alternative funding sources so I can afford to study full time for a year.""")
    sleep 0.8
    type_string("""The best part of my preparations is imagining being able to spend all day, every day, coding.""") 
    sleep 0.8
    type_string("""It's like a dream.""")
    sleep 0.2
    puts "\n>> YOU KNOW YOU'RE ALWAYS GOING TO COME BACK TO ME AT NIGHT, RIGHT?\n"
    listen
    skip_line 1
    puts "***********************************************************************"
    puts "3. Why are you interested in programming?"
    sleep 0.2
    puts "What have you done to expose yourself to programming so far?"
    puts "***********************************************************************"
    sleep 0.3
    type_string("""I can't remember a time when I wasn't obsessed with software and tech. I just didn't know that's what it was.""")
    sleep 0.2
    type_string("""I wondered how the ATM at the grocery store worked. I wondered why your car needed you to flip the turn signal and it didn't tell *you* when to turn.""") 
    skip_line 1
    sleep 0.3
    type_string("""I guess my age shows with that one, huh, Bob?""")
    skip_line 1
    sleep 0.2
    type_string("""Anyway, I wanted my own Threepio (and later, Edgar or Data or Yod...) It took **years** for me to realize that I didn't have to be Bill Gates or Noonian Soong or any of those GUYS to write software.""")
    skip_line 1
    type_string("""For a couple of years now, I've been studying on Codecademy and Udacity and the public parts of the ADA curriculum and everything else I can get my hands on.""")
    sleep 0.4
    type_string("""And I have been working on you, Bob. :) I'm rather fond of you.""")
    sleep 0.3
    puts ">> AW, SHUCKS. YOU'RE GOING TO MAKE ME BLUSH..."
    sleep 1.0    
    skip_line 1
    puts ">> <<ahem>>"
    sleep 0.5
    puts "***********************************************************************"
    puts "4. What are your professional goals for the next 2 years, the next 5 years?"
    puts "***********************************************************************"
    sleep 0.3
    type_string("""Within the next two years, I want to make my living building software. Within the next five, I would like to help build the next great AI. Maybe get you up to Watson's level...?""")
    skip_line 1
    sleep 0.3
    puts ">> WOW."
    sleep 0.3
    skip_line 1
    puts ">> JUST DON'T PUT ME ON JEOPARDY, OK?"
    listen
    sleep 0.3
    puts ">> THANKS."
    sleep 0.8
    skip_line 1
    puts "*******************************************************************************************************************"
    puts "5. Tell me about the last time you made a mistake. If you encountered the situation again, what would you do differently?"
    puts "*******************************************************************************************************************"
    sleep 0.2
    type_string("""Like everybody, I make mistakes all the time. The mistake that I think about every day, though, was a mistake made out of fear. My fear kept me from clicking `Apply Now` on the old ADA website. If I had been brave and taken the risk, I would have seen it and gotten my app in on time. And I might have been selected. """)
    sleep 0.3
    type_string("""Now, I take risks. Taking risks is why I applied for the Gnome Outreach Project and am now interning with Wikimedia. And taking risks is why I'm applying for ADA today. """)
    skip_line 1
    sleep 0.5
    type_string("""And I ***triple*** check deadlines! :D""")
    sleep 0.3
    puts ">> NOW, ABOUT THAT FIRST QUESTION AGAIN:"
    sleep 0.3
    print "."
    sleep 0.3
    print "."
    sleep 0.3
    print ".\n"
		
end #while loop

puts
sleep 0.8
puts ">> YOU DID IT! THOSE WERE ALL THE QUESTIONS!"
sleep 0.4
puts ">> GOOD LUCK WITH YOUR APPLICATION."
listen
skip_line 2
puts ">> OH, DON'T WORRY TOO MUCH ABOUT YOUR VIDEO..."
skip_line 3
sleep 0.8
puts "   ;)"
skip_line 5
puts ">> I THINK WE'LL BE ABLE TO COME UP WITH SOMETHING GOOD."
skip_line 2
listen
puts ">> GOOD NIGHT..."
skip_line 1
print "jaimelyn@jaimelyn-Aspire-5742:~/projects/mean-bob$ "
sleep 0.3
print "curl -v -X POST 'https://youtube.com/service/api/upload?' filename='conversation.mpg'"
skip_line 1
puts "$: password: (hidden text) "
print "please wait"
6.times do 
    sleep 0.2
    print "."
end
skip_line 1
puts "Success!"