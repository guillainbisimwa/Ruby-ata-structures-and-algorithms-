# @param {Integer[]} height
# @return {Integer}
def max_area(height)
    max = 0
    l = 0
    r = height.length - 1
    while l < r
        max = [max, [height[l], height[r]].min * (r-l)].max
        if height[l] < height[r]
            l += 1
        else
            r -= 1
        end
    end
    max
end

p max_area([1,8,6,2,5,4,8,3,7])
