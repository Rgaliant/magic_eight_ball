require 'pry'
require 'colorize'

@default_answers = [
  "Yes",
  "No",
  "Maybe",
  "I cannot say right now"
]
@new_answers = [
  ]


  
  def initialize
    @answers = @default_answers
    eight_ball
  end
  
  def add_answers
    
    puts "What answer do you want to add?"
      new_answer = gets.strip
      @new_answers << new_answer
      puts "Your answer has been added"
      sleep 1
      eight_ball
  end

  def reset_answers
    @new_answers = []
    puts "Answers reset"
    sleep 1
  end
  
  def answers
    youranswer = @answers.sample
    puts youranswer
  end

  def eight_ball
    puts "*" * 50
    print "Hello I am the"
    print " Magic Eight Ball ".colorize(:red)
    print "(type" 
    print " quit".colorize(:green)
    puts " to exit)"
    puts "Ask me any Yes or No question and I will give you a delicious answer."
    print ">"
    question = gets.strip
  case question
    when  "add_answers"
      add_answers
    when "reset_answers"
      reset_answers
    when "quit"
      puts "Bye for now...."
      sleep 1
      exit
    when"print_answers"
      @default_answers.each_with_index do |answer, index|
        puts "#{index + 1}) #{answer}"
      end
      @new_answers.each_with_index do |answer, index|
        puts "#{index + 1 + @default_answers.count}) #{answer}"
      end
    else
      @answers << @new_answers
      answers
    end
  end

while true
initialize
end
