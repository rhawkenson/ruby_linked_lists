class LinkedList
  def initialize
    @head = nil 
    @tail = nil 
  end 

  def append(value)
    until next_node.nil?
      Node.next_node
    end 
    next_node = Node.new(value)
  end 

end 



class Node 
  attr_accessor :value :next_node
  def initialize(value)
    @value = nil 
    @next_node = nil
  end 
end 

