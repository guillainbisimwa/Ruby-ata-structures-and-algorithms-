# frozen_string_literal: true

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  return 0 if prices.length < 2

  ans_zero = ans_two = 0
  ans_one = -prices[0]

  (1...prices.length).each do |index|
    temp = ans_two
    ans_two = ans_one + prices[index]
    ans_one = [ans_zero - prices[index], ans_one].max
    ans_zero = [ans_zero, temp].max
  end
  [ans_zero, ans_two].max
end

p max_profit([1, 2, 3, 0, 2])
