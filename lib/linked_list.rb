# frozen_string_literal: true

require './lib/node'

# A Class representing a Linked List
class LinkedList
  def initialize
    @head = Node.new
  end

  def tail(node = @head)
    return node if last_node?(node)

    tail(node.next_node)
  end

  def last_node?(node)
    return true if node.next_node.nil?

    false
  end
end
