# frozen_string_literal: true

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
  start = first_greater_equal(nums, target)
  return [-1, -1] if start == nums.length || nums[start] != target

  [start, first_greater_equal(nums, target + 1) - 1]
end

def first_greater_equal(nums, target)
  low = 0
  high = nums.length
  while low < high
    mid = low + ((high - low) / 2)
    if nums[mid] < target
      low = mid + 1
    else
      high = mid
    end
  end
  low
end

p search_range([5, 7, 7, 8, 8, 10], 8) # [3,4]
p search_range([5, 7, 7, 8, 8, 10], 6) # [-1, -1]
