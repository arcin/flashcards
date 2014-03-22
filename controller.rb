PATH = './'
require_relative 'models/card.rb'
require_relative 'models/deck.rb'
require_relative 'views/view.rb'

class Controller
  def initialize(file = PATH + 'flashcards_short.txt')
    @file = file
    @flashcards = Deck.new
    @text = []
    read
    objectify
  end

  def read
    File.readlines(@file).each { |line| @text << line }
    @text = @text.each_slice(3).to_a
  end

  def objectify
    @text.each { |row| @flashcards.add(Card.new(row[0],row[1])) }
  end


  def user_input
    response = View.grab_and_push(@card.definition)
  end


  # def check_if_correct

  #   View.display_result(correct_or_not)
  #   card.correct!

  #   # card.whatever_fucking_method(correct_or_not) # not the method name, clearly
  # end

  def prompt
      View.incorrect_message
      @guess = View.grab_response
  end

  def driver_loop
    View.welcome

    while @flashcards.deck.length > 0

      @flashcards.deck.each do |card|
        View.display_question(card.definition)
        guess = View.grab_response
        if guess == card.word.chomp
          card.correct = true
          View.correct_message
          sleep 2
        else
          puts "Wrong"
          puts card.word
          sleep 2
        end
      end
      @flashcards.clean
    end
    View.clear_screen
    View.end_game_message
  end

end

controller = Controller.new
controller.driver_loop
