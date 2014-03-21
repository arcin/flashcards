# this is the view-facing logic of the controller

require 'model.rb'
require 'view.rb'


def ask_question(card)
  response = View.grab_and_push(card.definition)
end

# check to see if right
  # send true display
  # destryo that card
  # else

# how can the controller tell the view that we're starting, need to see welcome

