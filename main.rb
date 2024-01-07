# frozen_string_literal: true

require './lib/linked_list'

list = LinkedList.new(0)
puts list
list.append(1)
list.append(2)
list.append(3)
list.prepend(-1)
list.prepend(-2)
puts list.size
puts list
