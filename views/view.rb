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
    clear_screen
    move_to_home!
    puts "\n"*10
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
    puts "Correct! Your answer is right on the mark!\nYou are likely good looking and deserve a raise and maybe a drink, handsome! \n\n"
  end

  def self.incorrect_message
    puts "Your answer was dumb. Try again! \n\n"
  end

  def self.clear_screen
    print "\e[2J"
  end

  def self.move_to_home!
    print "\e[H"
  end

# Flushes the STDOUT buffer.
# By default STDOUT is only flushed when it encounters a newline (\n) character
def self.flush!
  $stdout.flush
end

  def self.end_game_message
    puts "Congrats! You've finished the game!"
  end
end