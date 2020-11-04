
class LinkedList
  def initialize
    @head = nil 
    @tail = nil 
  end 

  def append(value)
    node = Node.new(value)
    if @head.nil?
      @head = node
      @tail = node
    else 
      @tail.next_node = node 
      @tail = node
    end 
  end 

  def prepend(value)
    node = Node.new(value)
    if @head.nil?
      append(value)
    else
      until @tail.next_node == nil 
        next
      end 
      @tail.next_node = node
      @tail = node
    end 
  end 

  def size
    counter = 0 
    current = @head
    while current != nil
      current = current.next_node
      counter += 1
    end
    counter
  end

  def head
    @head
  end 

  def tail
    @tail
  end 

  def at(index)
    counter = 0 
    current = @head
    until counter == index
      current = current.next_node
      counter += 1
    end
    current
  end 

  def pop
    @tail = at(size-2)
    @tail.next_node = nil 
  end 

  def contains?(value)
    current = @head
    
    until current == nil 
      return true if current.value == value 
      current = current.next_node
    end 
    false 
  end 

  def find(value)
    current = @head 
    counter = 0 
    until current == nil 
      return counter if current.value == value 
      current = current.next_node
      counter += 1
    end
    nil
  end 

  

end 


class Node 
  attr_accessor :value, :next_node
  def initialize(value = nil, next_node = nil)
    @value = value 
    @next_node = next_node
  end 
end 

