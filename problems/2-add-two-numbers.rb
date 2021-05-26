class Node
    attr_accessor :val, :next
    def initialize(val)
        @val = val
    end   
end

def reverseNode(node)
    reverseString = ""
    while node.next
        reverseString += node.val.to_s
        node = node.next
    end
    reverseString += node.val.to_s
    reverseString.reverse.to_i
end

def pupulateNode(array)
    head = nil
    array.each do |number|
        if !head.nil?
            newNode = Node.new(number)
            temp = head
            while !temp.next.nil?
                temp = temp.next
            end
            temp.next = newNode
        else
            head = Node.new(number)
        end
    end
    head
end


def add_two_numbers(l1, l2)
    sum = reverseNode(l1) + reverseNode(l2)
    sum.to_s.reverse.split('').map(&:to_i)
end

p add_two_numbers(pupulateNode([2,4,3]), pupulateNode([5,6,4]))
