# frozen_string_literal: true

# @param {Integer[]} height
# @return {Integer}
def max_area(height)
  max = 0
  left = 0
  right = height.length - 1
  while left < right
    max = [max, [height[left], height[right]].min * (right - left)].max
    if height[left] < height[right]
      left += 1
    else
      right -= 1
    end
  end
  max
end

p max_area([1, 8, 6, 2, 5, 4, 8, 3, 7])
