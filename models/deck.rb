class Deck
  attr_reader :deck
  def initialize
    @deck = []
  end

  # def read_deck
  #   File.readlines('../flashcards.txt').each_with_index do |line, index|
  #     # @cards << Card.new ()
  #     puts "#{line} is a question because line # is #{(index+1)}" if (index+1) % 3 == 1
  #     puts "#{line} is an answer because line # is #{(index+1)}" if (index+1) % 3 == 2

  #   end
  # end

  def add(card)
    @deck << card
    @deck.length ##bugbug
  end

  def contain(card)
    @deck.include?(card)
  end

  def check(guess)
    @deck.delete_if { |card| card.word == guess }
  end
end

