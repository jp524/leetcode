# 155. Min Stack
# Stack

class MinStack
  attr_reader :stack
  def initialize()
    @stack = []
  end

=begin
  :type val: Integer
  :rtype: Void
=end
  def push(val)
    if @stack.empty?
      @stack << [val, val]
    else
      prev_min =  @stack.last[0]
      min_val = [prev_min, val].min
      @stack << [min_val, val]
    end
    nil
  end

=begin
  :rtype: Void
=end
  def pop()
    @stack.pop
    nil
  end

=begin
  :rtype: Integer
=end
  def top()
    @stack.last[1]
  end

=begin
  :rtype: Integer
=end
  def get_min()
    @stack.last[0]
  end
end

# p obj = MinStack.new() # obj
# p obj.push(-2) # nil
# p obj.push(0) # nil
# p obj.push(-3) # nil
# p obj.get_min # -3
# p obj.pop # nil
# p obj.top # 0
# p obj.get_min # -2

# p obj = MinStack.new() # obj
# p obj.push(-3) # nil
# p obj.get_min # -3

p obj = MinStack.new() # obj
p obj.push(-2) # nil
p obj.push(0) # nil
p obj.push(-1) # nil
p obj.get_min # -2
p obj.top # -1
p obj.pop # nil
p obj.get_min # -2
