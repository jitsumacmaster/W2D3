require 'tower'
class Hannoi
  
  attr_reader :board, :hand

  def initialize
    @board = []
    @hand = []
  end

  def set_board
    3.times { board << Tower.new }
    board[0].set_start_tower
  end

  def h_won?
    board.any? { |tower| tower.t_won? }
  end

  def pick_up_from(tower_idx)
    if hand.empty?
      hand << board[tower_idx].stack.pop
    else
      puts "There's already a disc in your hand!!"
    end
  end

  def put_down_on
  end
end