# @param {Integer[]} coins
# @param {Integer} amount
# @return {Integer}
def coin_change(coins, amount)
    t = Array.new(amount + 1, amount + 1)  
    t[0] = 0
    (1..amount).each do |nbr|
        temp = coins[nbr]
        (0...coins.length).each do |j|
            if coins[j] <= nbr
                t[nbr] = [t[nbr], t[nbr - coins[j]] + 1].min;
            end
            #t[j] += t[j - temp]
        end 
    end
    t[amount] > amount ? -1 : t[amount];
end


p coin_change([1, 3, 5, 7], 8)
p coin_change([1,2,5], 11)