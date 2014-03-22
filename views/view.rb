# welcome to the game
# spit out a question from the controller
# get the response
# send response to the controller
# get and display answer from controller


class View

  def self.welcome
    "Welcome to the Match-O 2000 game!"
  end

  def self.grab_and_push(question)
    display_question(question)
    grab_response
  end

  def self.display_question(question) # arg
    puts question
  end

  def self.grab_response # grab and pass response
    gets.chomp
  end

#   def self.display_result(result)
#     if result

#     else

#     end
#   end
# end

  def self.correct_message
    puts "Correct! Your answer right on the mark! You are likely good looking and deserve a raise and maybe a drink, handsome! \n\n"
  end

  def self.incorrect_message
    puts "Your answer was dumb. Try again! \n\n"
  end




  def self.end_game_message
    puts "Congrats! You've finished the game!"
  end
end