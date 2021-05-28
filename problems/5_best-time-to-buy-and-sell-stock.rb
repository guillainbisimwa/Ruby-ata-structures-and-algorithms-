# frozen_string_literal: true

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  min = prices.max
  max = 0
  prices.each do |nbr|
    if nbr < min
      min = nbr
    elsif nbr - min > max
      max = nbr - min
    end
  end
  max
end

p max_profit([7, 1, 5, 3, 6, 4])
