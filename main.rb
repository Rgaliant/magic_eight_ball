require 'pry'
require 'colorize'


## THIS IS MY GAME!!!!


class Eight_ball

  
  def initialize
    looping = true;
    @default_answers = [
  "Yes",
  "No",
  "Maybe",
  "I cannot say right now"
]
@new_answers = @default_answers.clone
@colors = [
  :cyan,
  :red,
  :magenta,
  :blue,
  :green,
]
    @answers = @default_answers
    eight_ball
  end
  
  def add_answers
    
    puts "What answer do you want to add?"
      input = gets.strip
      if @new_answers.include?(input)
        puts "invalid entry"
      else
      @new_answers << input
      puts "Your answer has been added"
      sleep 1
      eight_ball
      end
  end

  def reset_answers
    puts "Answers reset".colorize(@colors.sample)
    sleep 1
    initialize
  end
  
  def answers
    puts "Calculating...."
    sleep 1
    youranswer = @answers.flatten.sample
    puts "🎱>" + youranswer.colorize(@colors.sample)
    sleep 1
    eight_ball
  end

  def eight_ball
    puts "*" * 50
    print "Hello I am the".colorize(:cyan)
    print " Magic Eight Ball ".colorize(:red)
    print "(type".colorize(:cyan)
    print " 7".colorize(:green)
    puts " for easter egg commands)".colorize(:cyan)
    puts "Ask me any Yes or No question and I will give you a delicious answer."
    print ""
    
  case gets.strip
    when  "add_answers"
      add_answers
    when "reset_answers"
      reset_answers
    when "quit"
      puts "Bye for now...."
      sleep 1
      exit
    when"print_answers"
      @new_answers.each_with_index do |answer, index|
        puts "#{index + 1}) #{answer}"
      end
      sleep 1
      eight_ball
    when "7"
      easter_eggs
    else
      @answers << @new_answers
      answers
    end
  end

  def easter_eggs
    puts "Type add_answers to add"
    puts "Type reset_answers to reset"
    puts "Type print_answers for a list"
    puts "Type quit to exit"
    eight_ball
  end

end

Eight_ball.new