# frozen_string_literal: true

require './lib/node'

# A Class representing a Linked List
class LinkedList
  attr_reader :head

  def initialize(value = nil)
    @head = Node.new(value)
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

  def contains?(value, node = head)
    return true if node.value == value
    return false if last_node?(node)

    contains?(value, node.next_node)
  end

  def find(value, node = head)
    return node if node.value == value
    return nil if last_node?(node)

    find(value, node.next_node)
  end

  def to_s
    node = head
    msg = ''
    while node
      msg += "( #{node.value} )"
      msg += ' -> ' unless node.next_node.nil?
      msg += ' -> nil' if last_node?(node)
      node = node.next_node
    end
    msg
  end

  private

  def last_node?(node)
    return true if node.next_node.nil?

    false
  end
end
