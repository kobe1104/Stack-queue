class MyQueue
  attr_accessor :store
  def initialize
    @store = []
  end

  def enqueue(num)
    @store.unshift(num)
  end
  def dequeue
    @store.pop
  end
  def peek
    @store.last
  end
  def size
    @store.length
  end
  def empty?
    @store.size == 0
  end
end
