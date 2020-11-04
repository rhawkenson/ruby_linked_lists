require './linked_lists.rb'

list = LinkedList.new
list.append(6)
list.append(7)
list.prepend(4)
list.prepend(10)

p list.find(6)
p list.find(7)
p list.find(4)
p list.find(10)
p list.find(90)