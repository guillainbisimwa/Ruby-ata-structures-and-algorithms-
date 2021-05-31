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
# @return {Integer[][]}
def level_order(root)
    tree = BST.new
    root.each { |e| tree.insert(TreeNode.new(e)) }
    stack = []
    tree.pre_order
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
        res = []
        stack = []
        stack.push(node)
        i = 1
        left = []
        right = []
       
        while !stack.empty?
          curr = stack.pop
          res.push([curr.val]) if i == 1
          i += 1
          
          unless curr.left.nil?
            left.push(curr.left.val)
            stack.push(curr.left)
          end

          unless curr.right.nil?
            right.push(curr.right.val)
            stack.push(curr.right)
          end
        end
        res.push(right)
        res.push(left)

        res
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
  
p level_order([3,9,20,15,7])
