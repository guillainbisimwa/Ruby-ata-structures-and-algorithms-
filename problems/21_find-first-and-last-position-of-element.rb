# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
    start = firstGreaterEqual(nums, target)
    if start == nums.length || nums[start] != target
        return [-1, -1]
    end
    return [start, firstGreaterEqual(nums, target + 1) - 1 ]
end

def firstGreaterEqual(nums, target)
    low = 0
    high = nums.length
    while low < high
        mid = low + ((high - low)/2)
        if nums[mid] < target
            low = mid + 1
        else
            high = mid
        end
    end
    return low
end

p search_range([5,7,7,8,8,10], 8) # [3,4]
p search_range([5,7,7,8,8,10], 6) # [-1, -1]
