# frozen_string_literal: true

require './lib/linked_list'

list = LinkedList.new
puts list
list.prepend(1)
p list.tail
