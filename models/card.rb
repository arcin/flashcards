require_relative 'Deck'
class Card
  attr_reader :definition, :word
  def initialize(definition, word)
    @definition = definition
    @word = word
    @correct = false
  end

  def correct!
    @correct = true
  end

  def correct?
    @correct
  end
end

def assert(actual, expectation)
  if actual == expectation
    print "."
  else
    puts "You expected #{expectation} but you got #{actual}"
  end
end

# flashcards = Deck.new
# people = Card.new("A group of humans", "people")
# sortir = Card.new("To go out", "sortir")
# fire = Card.new("Air molecules vibrating so much thatcard.correct! they cause heat", "fire")

# assert flashcards.add(people), 1
# assert flashcards.add(sortir), 2
# assert flashcards.add(fire), 3
# assert flashcards.contain(sortir), true
# assert flashcards.contain(fire), false

# .+(?=\.)[.")]+(?=\n) this will get all the definition
# (?<=[.")]\n).+ this will get all the words