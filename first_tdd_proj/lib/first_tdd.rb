class Array 
  
  def my_uniq
    uniq
  end    

  def two_sum
    pairs = []
    each_with_index do |el1,i|
      each_with_index do |el2,j|
        pairs << [i,j] if j > i && el1 + el2 == 0
      end 
    end 

    pairs
  end    

  def my_transpose
    transpose
  end

  def stock_picker
    # days = []
    largest_diff = [0,1]
    each_with_index do |el1,i|
      each_with_index do |el2,j|
        # diff = el2 - el1
        # if j > i && diff > largest_diff
        largest_diff = [i, j] if self[j] - self[i] > self[largest_diff[1]] - self[largest_diff[0]]
          
      end 
    end
    largest_diff 
  end
end 