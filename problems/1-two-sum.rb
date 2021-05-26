# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    hashTable = Hash.new
    index = 0
    nums.each do |number|

        complement = target - number
        return [ hashTable.key(complement), index] if hashTable.has_value?(complement)
        
        hashTable[index] = number
        index += 1
    end

    'No complement'
end

p two_sum([10,3,5,7], 15)