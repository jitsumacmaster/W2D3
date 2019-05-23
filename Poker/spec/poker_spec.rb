require "card"
require "deck"

RSpec.describe Card do
  subject(:card_test) { Card.new(1,"Heart") }
  describe "#initialize" do   
    it "should set an instance variable for value" do
      expect(card_test.value).to eq(1)
    end
    it "should take in an argument and set the suite" do
      expect(card_test.suite).to include("Heart")
    end 
  end
  describe "#read_card" do
    it "reads ace" do
      expect(card_test.read_card).to include("Ace")
    end 
    it "reads king" do 
      king = Card.new(13,"Heart")
      expect(king.read_card).to include("King")
    end 
    it "reads jack" do 
      jack = Card.new(11,"Heart")
      expect(jack.read_card).to include("Jack")
    end 
    it "reads queen" do 
      queen = Card.new(12,"Heart")
      expect(queen.read_card).to include("Queen")
    end 
  
  end



end

RSpec.describe Deck do
  subject(:deck_test) { Deck.new }
  describe "#initialize" do   
    it "set 4 suites" do
      expect(deck_test.heart).to_not be_empty
    end
    it "fills each suite with cards" do
      expect(deck_test.diamond).to_not be_empty
    end 

    it "shuffles deck" do
      expect(deck_test.pile.length).to eq(52) 
    end
  end
end