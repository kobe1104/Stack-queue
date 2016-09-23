require_relative 'stack'

class StackQueue

  attr_accessor :stack, :buffer
  def initialize(arr = [1, 2, 3, 4])
    @stack = MyStack.new(arr)
    @buffer = MyStack.new([])
  end

  def enqueue(num)
    @stack.push(num)
  end

  def dequeue
    until @stack.empty?
      @buffer.push(@stack.pop)
    end
    @buffer.pop
    until @buffer.empty?
      @stack.push(@buffer.pop)
    end
  end

  def peek
    @stack.peek
  end

  def size
    @stack.size
  end
  def empty?
    @stack.empty?
  end
end


a = StackQueue.new
a.dequeue
p a.stack
