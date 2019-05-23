class Card
  attr_reader :value, :suite
  SUITES = ["Heart","Spade","Diamond","Club"].freeze 

  def initialize(value,suite)
    @value = value 
    @suite = suite
  end    

  def read_card 
    return "Joker" if value == 0
    return "Ace" if value == 1
    return "Jack" if value == 11
    return "Queen" if value == 12
    return "King" if value == 13

  end    
end