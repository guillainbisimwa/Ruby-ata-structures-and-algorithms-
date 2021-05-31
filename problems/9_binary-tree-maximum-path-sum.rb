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
# @return {Integer}

def max_path_sum(root)
    tree = BST.new
    root.each { |e| tree.insert(TreeNode.new(e)) }
    stack = []
    tree.findMaxPathSum
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
  
  def findMaxPathSum(node = @root, result = nil)
    return 0 if node.nil?

    # find maximum path sum "starting" from the left child
    left, result = findMaxPathSum(node.left, result)
    
    # find maximum path sum "starting" from the right child
    right, result = findMaxPathSum(node.right, result)

    # Try all possible combinations to get the optimal result
    result = [result, node.val].max
    result = [result, node.val + left].max
    result = [result, node.val + right].max
    result = [result, node.val + left + right].max
 
    # return the maximum path sum "starting" from the given node
    return [node.val, node.val + [left, right].max].max, result

  end
  
  
end

p max_path_sum([-10,9,20,15,7])

# def findMaxPathSum(node, result=-sys.maxsize):
 
#     # base case: empty tree
#     if node is None:
#         return 0, result
 
#     # find maximum path sum "starting" from the left child
#     left, result = findMaxPathSum(node.left, result)
 
#     # find maximum path sum "starting" from the right child
#     right, result = findMaxPathSum(node.right, result)
 
#     # Try all possible combinations to get the optimal result
#     result = max(result, node.data)
#     result = max(result, node.data + left)
#     result = max(result, node.data + right)
#     result = max(result, node.data + left + right)
 
#     # return the maximum path sum "starting" from the given node
#     return max(node.data, node.data + max(left, right)), result