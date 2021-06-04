# frozen_string_literal: true

# @param {Integer[]} nums
# @return {Integer[]}
def find_disappeared_numbers(nums)
  array = (1..nums.length).to_a
  array - nums
end

p find_disappeared_numbers([4, 3, 2, 7, 8, 2, 3, 1])

p find_disappeared_numbers([1, 1])
