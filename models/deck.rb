class Deck
  attr_reader :deck
  def initialize
    @deck = []
  end



  def add(card)
    @deck << card
  end

  def contain(card)
    @deck.include?(card)
  end

  def check(guess)
    @deck.each  { |card| card.correct! if card.word == guess.word }
  end

  def clean
    @deck.delete_if { |card| card.correct? }
  end

  def shuffle
    @deck.shuffle!
  end
end

# escape code is     print "\e[2J"