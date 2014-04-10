# "Complete the solution. It should try to retrieve the value of the array at the index provided.
# If the index is out of the array's max bounds then it should return the default value instead."

# data = ['a', 'b', 'c']
# solution(data, 1, 'd') # should == 'b'
# solution(data, 5, 'd') # should == 'd'

# # negative values work as long as they aren't out of the length bounds
# solution(data, -1, 'd') # should == 'c'
# solution(data, -5, 'd') # should == 'd'


class ArrayFetch
  def solution( items, index, default_value )
    puts items.fetch(index, default_value)
  end
  data = ['a', 'b', 'c']
  obj = ArrayFetch.new
  obj.solution(data, -5, 'd')
end