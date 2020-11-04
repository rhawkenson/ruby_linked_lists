require './linked_lists.rb'

list = LinkedList.new
list.append(6)
list.append(7)
list.prepend(4)
list.prepend(10)

p list.contains?(10)