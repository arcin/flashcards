# this is the view-facing logic of the controller

require 'model.rb'
require 'view.rb'


def ask_question
  @response = View.grab_and_push(@card.definition)
end


def check_if_correct
  correct_or_not = @card.word == @response
  View.display_result(correct_or_not)

  # card.whatever_fucking_method(correct_or_not) # not the method name, clearly
end

def inner_loop
  until cardthing# line 16 == true
    ask_question
    check_if_correct
  end

end

def driver_loop
  until @flashcards.deck.empty?
    inner_loop
  end
    View.end_game_message
end


deck = Deck.new
not_real