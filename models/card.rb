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

# def assert(actual, expectation)
#   if actual == expectation
#     print "."
#   else
#     puts "You expected #{expectation} but you got #{actual}"
#   end
# end
