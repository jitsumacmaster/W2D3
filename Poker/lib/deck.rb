require_relative 'card'
 
class Deck
  attr_reader :heart, :club, :diamond, :spade, :pile
  def initialize
    @heart = []
    @club = []
    @diamond = []
    @spade = []
    fill_suites
    @pile = []
    shuffle_deck
  end

  def fill_suites
    (1..13).each do |val|
      @heart << Card.new(val, "Heart")
      @club << Card.new(val, "Club")
      @diamond << Card.new(val, "Diamond")
      @spade << Card.new(val, "Spade")
    end
  end

  def shuffle_deck
    @pile += (@heart + @club + @diamond + @spade)
    @pile.shuffle!
  end
end