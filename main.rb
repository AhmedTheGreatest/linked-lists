# frozen_string_literal: true

require './lib/linked_list'

list = LinkedList.new
puts list
p list.size
list.prepend(1)
p list.size
p list.tail
