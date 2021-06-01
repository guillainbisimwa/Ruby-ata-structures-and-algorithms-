# frozen_string_literal: true

# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  return 1 if n == 1

  dp = []

  dp[0] = 0
  dp[1] = 1
  dp[2] = 2

  (3..n).each do |nbr|
    dp[nbr] = dp[nbr - 1] + dp[nbr - 2]
  end
  dp[n]
end

p climb_stairs(6)
