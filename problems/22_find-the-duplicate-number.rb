# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer}
def find_duplicate(nums)
  visited = [false] * (nums.length + 1)
  (0...nums.length).each do |index|
    return nums[index] if visited[nums[index]]

    visited[nums[index]] = true
  end
  -1
end

p find_duplicate([1, 2, 3, 4, 4])
p find_duplicate([2, 2, 2, 2, 2])
p find_duplicate([1, 4, 4, 2, 4])
