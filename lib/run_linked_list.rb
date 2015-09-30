require_relative "linked_list.rb"

list = LinkedList.new
p list.to_s
list.insert(Node.new("hello"))
p list.to_s
list.insert(Node.new(3), 1)
p list.to_s
list.insert(Node.new(:one), :HEAD)
p list.to_s
list.insert(Node.new("bye"), :last)
p list.to_s
list.insert(Node.new("last"), -1)
p list.to_s
p list.search("hello")
p list.search("byebye")
p list.remove(3)
p list.to_s
p list.remove("byebye")
p list.to_s
