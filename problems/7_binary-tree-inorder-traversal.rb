# frozen_string_literal: true

# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

# @param {TreeNode} root
# @return {Integer[]}
def inorder_traversal(root)
  tree = BST.new
  root.each { |e| tree.insert(TreeNode.new(e)) }
  stack = []
  tree.in_order
end

class BST
  def insert(new_node, head = @root)
    # base case: catch if the tree is empty
    if @root.nil?
      @root = new_node
      return
    end
    # it helps to break the recursion when you find the empty spot
    return new_node if head.nil?

    # if the new node is less than the head, go to the left descendant
    if new_node.val < head.val
      head.left = insert(new_node, head.left)
    # if the new node is greater than the head, go to the right descendant
    elsif new_node.val > head.val
      head.right = insert(new_node, head.right)
    end
    # return the calculated head
    head
  end

  def pre_order(node = @root)
    # implementation from the previous challenge
    return '' if node.nil?

    result = "#{node.val} "
    result += pre_order(node.left)
    result += pre_order(node.right)
  end

  def in_order(node = @root)
    res = []
    stack = []

    while !node.nil? || !stack.empty?
      until node.nil?
        stack.push(node)
        node = node.left
      end
      node = stack.pop
      res.push(node.val)
      node = node.right
    end
    res
  end
end

p inorder_traversal([8, 3, 10, 1, 6, 14, 4, 7, 13])
