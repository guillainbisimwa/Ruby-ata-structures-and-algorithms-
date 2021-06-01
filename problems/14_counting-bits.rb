# @param {Integer} n
# @return {Integer[]}
def count_bits(n)
    result = Array.new(n+1, 0)
    offset = 1
    (1...n+1).each do |index|
        if offset * 2 == index
           offset *= 2 
        end
        result[index] = result[index - offset] + 1
    end
    result
end

p count_bits(5)
