require_relative 'card'
require_relative 'deck'

class Hand

  def initialize 
    @players_cards = []
  end   

  #[card,car,caar,car,car]
  #map card.value
  #[[1,heart],4,7,11,10]
  #
  def hand_scores
    score = 0
    card_values = @players_cards.map { |card| card.value}
    card_suites = @players_cards.map {} |card| card.suite }
    
  end    
  def <=>

  end     

end