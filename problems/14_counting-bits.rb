# frozen_string_literal: true

# @param {Integer} n
# @return {Integer[]}
def count_bits(n)
  result = Array.new(n + 1, 0)
  offset = 1
  (1...n + 1).each do |index|
    offset *= 2 if offset * 2 == index
    result[index] = result[index - offset] + 1
  end
  result
end

p count_bits(5)
