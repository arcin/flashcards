require_relative 'Deck'
class Card
  attr_reader :definition, :word
  def initialize(definition, word)
    @definition = definition
    @word = word
  end
end

def assert(actual, expectation)
  if actual == expectation
    print "."
  else
    puts "You expected #{expectation} but you got #{actual}"
  end
end

flashcards = Deck.new
people = Card.new("people", "A group of humans")
sortir = Card.new("sortir", "To go out")
fire = Card.new("fire", "Air molecules vibrating so much that they cause heat")

assert flashcards.add(people), 1
assert flashcards.add(sortir), 2
assert flashcards.contain(sortir), true
assert flashcards.contain(fire), false
# assert flashcards.remove(sortir), sortir

flashcards.read_deck

# .+(?=\.)[.")]+(?=\n) this will get all the definition
# (?<=[.")]\n).+ this will get all the words