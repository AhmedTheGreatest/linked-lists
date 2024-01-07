# frozen_string_literal: true

# A Class representing a Node in a Linked List
class Node
  attr_accessor :value, :next_node

  def initalize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end
