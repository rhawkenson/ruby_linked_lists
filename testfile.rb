require './linked_lists.rb'

list = LinkedList.new
list.append(6)
list.append(7)
list.prepend(4)
list.prepend(10)


list.insert_at(5,1)
p list 
puts "\n\n"

list.delete_at(1)

p list 
puts "\n\n"