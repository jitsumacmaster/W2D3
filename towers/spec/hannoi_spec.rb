require "tower"
require "hannoi"

RSpec.describe Tower do
  subject(:tower_test) { Tower.new }
  describe "#initialize" do
    it "Has an instance variable stack that is an empty array" do
      expect(tower_test.stack).to be_empty
    end 
    it "Has a boolean for whether it is a start tower" do
      expect(tower_test.start).to be false 
    end
  end
  describe "#set_start_tower" do 
    it "Makes a tower instance a start tower" do
      tower_test.set_start_tower
      expect(tower_test.start).to be true  
    end 
    it "Sets the start tower stack to 4" do
      tower_test.set_start_tower
      expect(tower_test.stack).to eq( [ 4, 3, 2, 1 ] )
    end
  end

  describe "#t_won?" do
    it "returns true if stack length is 4 and start is false" do
      4.times { tower_test.stack << 1 }
      expect(tower_test.start).to be false
      expect(tower_test.stack.length).to eq 4
      expect(tower_test.t_won?).to be true
    end
  end 
    
end

RSpec.describe Hannoi do
  subject(:hannoi_test) { Hannoi.new }
  describe "#initialize" do
    it "set board to an empty array"  do
      expect(hannoi_test.board).to be_empty
    end 
    
    it "set hand to an empty array"  do
      expect(hannoi_test.hand).to be_empty
    end 
  end
  
  describe "#set_board" do
    before(:each) {hannoi_test.set_board }
    it "should make 3 towers" do 
      # hannoi_test.set_board
      expect(hannoi_test.board.length).to eq(3)
    end

    it "should set one tower to start tower" do
      # hannoi_test.set_board
      expect(hannoi_test.board[0].start).to be true
    end

    it "2 towers should not be start towers"do
      # hannoi_test.set_board
      expect(hannoi_test.board[1].start).to be false
      expect(hannoi_test.board[2].start).to be false
    end
  end

  describe "#h_won?" do
    it "returns true if non-start tower.t_won? is true" do
      hannoi_test.set_board
      4.times { hannoi_test.board[1].stack << 1 }
      expect(hannoi_test.h_won?).to be true
    end
  end 

  describe '#pick_up_from'do
    it "removes the top el from a tower and pushes it into the hand array" do
      hannoi_test.set_board
      hannoi_test.pick_up_from(0)
      expect(hannoi_test.hand.size).to eq 1
      expect(hannoi_test.board[0].stack.size).to eq 3
    end

    it "doesn't pick up anything if the is alread a value in hand" do
      hannoi_test.set_board
      hannoi_test.pick_up_from(0)
      expect(hannoi_test.hand.size).to eq 1
      expect(hannoi_test.board[0].stack.size).to eq 3
      hannoi_test.pick_up_from(0)
      expect(hannoi_test.hand.size).to eq 1
      expect(hannoi_test.board[0].stack.size).to eq 3
    end
  end

end