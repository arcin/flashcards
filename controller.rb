PATH = './'
require_relative 'models/card.rb'
require_relative 'models/deck.rb'
require_relative 'views/view.rb'
require 'pry'

class Controller
  def initialize(file = PATH + 'flashcards.txt')
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
      guess = View.grab_response
  end

  def driver_loop
    View.welcome
    @flashcards.deck.each do |card|
      View.display_question(card.definition)
      guess = View.grab_response
      until card.word.chomp == guess
        prompt
      end
      View.correct_message
    end
    View.end_game_message
  end

end

controller = Controller.new
controller.driver_loop
