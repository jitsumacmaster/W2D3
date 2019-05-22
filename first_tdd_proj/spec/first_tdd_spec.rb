require 'first_tdd'

RSpec.describe Array do 
  describe "#my_uniq" do    
    let(:test_arr) { [1,2,1,3,3] }
    it "Returns an array without any duplicates" do 
      expect(test_arr.my_uniq).to eq(test_arr.uniq)
    end
  end

  describe "#two_sum" do  
    let(:test_arr) { [-1, 0, 2, -2, 1] }  
    it "Return an array of arrays of pairs of indices that sum to 0" do    
      expect(test_arr.two_sum).to eq([[0, 4], [2, 3]])
    end
    it "Pairs should be sorted dictionary wise" do    
      expect(test_arr.two_sum).to eq(test_arr.two_sum.sort)
    end 
  end 

  describe "#my_transpose" do
    let(:test_arr) { [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8]
      ]} 
    it "transposes an array" do
      expect(test_arr.my_transpose).to eq(test_arr.transpose)
    end
  end

  describe '#stock_picker' do
    let(:stock) { [40, 30, 20, 45, 55, 20, 1, 100] }
    it "Return an array of the days where it was most profitable to buy and sell" do
      expect(stock.stock_picker).to eq([6, 7])
    end
  end
end