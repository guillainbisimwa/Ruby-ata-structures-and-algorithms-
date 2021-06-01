# frozen_string_literal: true

# @param {Integer[]} coins
# @param {Integer} amount
# @return {Integer}
def coin_change(coins, amount)
  table = Array.new(amount + 1, amount + 1)
  table[0] = 0
  (1..amount).each do |nbr|
    temp = coins[nbr]
    (0...coins.length).each do |jjj|
      table[nbr] = [table[nbr], table[nbr - coins[jjj]] + 1].min if coins[jjj] <= nbr
    end
  end
  table[amount] > amount ? -1 : table[amount]
end

p coin_change([1, 3, 5, 7], 8)
p coin_change([1, 2, 5], 11)
