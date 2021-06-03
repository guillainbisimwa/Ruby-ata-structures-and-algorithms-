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

  def diam(node = @root, diameter = 0)
    return 0 if node.nil?

    left = diam(node.left, diameter)
    right = diam(node.right, diameter)

    # left_height = left[0]
    # diameter = left[1]
    # right_height = right[0]
    # diameter = right[1]

    # calculate diameter "through" the current node
    max_diameter = left + right + 1

    # update maximum diameter (note that diameter "excluding" the current
    # node in the subtree rooted at the current node is already updated
    # since we are doing postorder traversal)
    diameter = [diameter, max_diameter].max

    # it is important to return the height of the subtree rooted at the current node
    [left, right].max + 1
  end
end

# @param {TreeNode} root
# @return {Integer}
def diameter_of_binary_tree(root)
  tree = BST.new
  root.each { |e| tree.insert(TreeNode.new(e)) }
  diameter = 0
  tree.diam
  # tree.diam(tree, diameter)[1]
end

p diameter_of_binary_tree([1, 2, 3, 4, 5])

# class Solution {
#     int result=0;
#     public int diameterOfBinaryTree(TreeNode root) {
#         findDiaTemp(root);
#         return result;
#     }

#     public int findDiaTemp(TreeNode root){
#         if(root==null)
#             return 0;
#         int left=findDiaTemp(root.left);
#         int right=findDiaTemp(root.right);
#         int curr_sum=left+right;
#         int max_l_r=Math.max(left,right)+1;
#         result=Math.max(result,curr_sum);
#         return max_l_r;
#     }
# }
