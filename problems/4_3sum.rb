# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer[][]}
require 'set'

def three_sum(nums)
  return [] if (nums[0]).zero? && nums.length < 3

  return [[0, 0, 0]] if nums.uniq[0].zero? && nums.uniq.length == 1

  hash_table = []
  index = 0
  nums.sort!

  len = nums.length
  (0...len).each do |index|
    complement = {}
    next if index != 0 && nums[index] == nums[index - 1]

    ((index + 1)...len).each do |position|
      t = -nums[index] - nums[position]
      if complement.value?(t)
        unless hash_table.include?([nums[index], nums[position], t].sort)
          hash_table.push([nums[index], nums[position], t].sort)
        end
        position += 1 while nums[position + 1] == nums[position] && position + 1 < len
      end
      complement[position] = nums[position]
    end
    index += 1
  end
  hash_table
end

# three_sum([-1,0,1,2,-3,-4])
# p three_sum([0,0,0,0])
# p three_sum([-2,0,0,2,2])
p three_sum([0])
