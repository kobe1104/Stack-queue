class MyStack
  attr_accessor :store
  def initialize(store = [])
    @store = store
    @metadata = []
    @buffer = []
  end

  def max
    @store.last.values.first
  end


  def pop
    @store.pop
  end

  def push(num)
    max = nil
    @store.push(num)
    @metadata.push(value)
    if max.nil? || @metadata.last.values.first < value
      max = value
    end
    sub_hash = {value = > max}
    @metadata << sub_hash
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
