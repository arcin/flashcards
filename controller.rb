PATH = './'
require_relative 'models/card.rb'
require_relative 'models/deck.rb'
# require_relative 'views/view.rb'

class Controller
  def initialize(file = PATH + 'flashcards.txt')
    @file = file
    @flashcards = Deck.new
    @text = []
    read
    objectify
    p @flashcards
  end

  def read
    File.readlines(@file).each { |line| @text << line }
    @text = @text.each_slice(3).to_a
  end

  def objectify
    @text.each { |row| @flashcards.add(Card.new(row[0],row[1])) }
  end
end

controller = Controller.new
