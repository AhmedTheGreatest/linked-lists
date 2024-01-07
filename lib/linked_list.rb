# frozen_string_literal: true

require './lib/node'

# A Class representing a Linked List
class LinkedList
  attr_reader :head

  def initialize
    @head = Node.new
  end

  def append(value)
    tail.next_node = Node.new(value)
  end

  def prepend(value)
    @head = Node.new(value, head)
  end

  def size(node = head, count = 0)
    return count if last_node?(node)

    size(node.next_node, count + 1)
  end

  def tail(node = head)
    return node if last_node?(node)

    tail(node.next_node)
  end

  def at(index, node = head)
    count = 0
    return node if count == index

    at(index - 1, node.next_node)
  end

  def pop(node = head)
    return node.next_node = nil if last_node?(node.next_node)

    pop(node.next_node)
  end

  private

  def last_node?(node)
    return true if node.next_node.nil?

    false
  end
end
