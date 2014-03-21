# welcome to the game
# spit out a question from the controller
# get the response
# send response to the controller
# get and display answer from controller

require 'model.rb'


class View

  def welcome
    "Welcome to the Match-O 2000 game!"
  end

  def grab_and_push(question)
    display_question(question)
    grab_response
  end

  def display_question(question) # arg
    puts question
  end

  def grab_response # grab and pass response
    @response = gets.chomp
  end

  def display_result(result)
    if result
      puts "Correct! Your answer of #{@response} was right on the mark! You are likely good looking and deserve a raise and maybe a drink, handsome!"
    else
      puts "Your answer of #{@response} was dumb. Try again!"
  end
end

