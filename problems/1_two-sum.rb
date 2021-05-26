# frozen_string_literal: true

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  hash_table = {}
  index = 0
  nums.each do |number|
    complement = target - number
    return [hash_table.key(complement), index] if hash_table.value?(complement)

    hash_table[index] = number
    index += 1
  end

  'No complement'
end

p two_sum([10, 3, 5, 7], 15)
