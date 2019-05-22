class Tower 
  attr_reader :stack, :start

  def initialize
    @stack = []
    @start = false  
  end 

  def set_start_tower
    @start = true  
    @stack = [4,3,2,1]
  end
  
  def t_won?
    !start && stack.size == 4
  end

  
  # def pick_up
  #   stack.pop
  # end

end 