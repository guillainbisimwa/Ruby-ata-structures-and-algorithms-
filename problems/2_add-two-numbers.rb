# frozen_string_literal: true

class Node
  attr_accessor :val, :next

  def initialize(val)
    @val = val
  end
end

def reverse_node(node)
  reverse_string = ''
  while node.next
    reverse_string += node.val.to_s
    node = node.next
  end
  reverse_string += node.val.to_s
  reverse_string.reverse.to_i
end

def pupulate_node(array)
  head = nil
  array.each do |number|
    if !head.nil?
      new_node = Node.new(number)
      temp = head
      temp = temp.next until temp.next.nil?
      temp.next = new_node
    else
      head = Node.new(number)
    end
  end
  head
end

def add_two_numbers(list_one, list_two)
  sum = reverse_node(list_one) + reverse_node(list_two)
  sum.to_s.reverse.split('').map(&:to_i)
end

p add_two_numbers(pupulate_node([2, 4, 3]), pupulate_node([5, 6, 4]))
