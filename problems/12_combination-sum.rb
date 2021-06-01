# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
def combination_sum(candidates, target)
    ret = [] 
    ret = dfs(candidates, target, [], ret)
    ret
end

def dfs(nums, target, path, ret)
    return 0 if target < 0
    if target == 0
        ret.push(path)
        return ret
    end
    (0...nums.length).each do |i|
        n = nums.length
        dfs(nums[i..n], target - nums[i], path + [nums[i]], ret)
    end
    ret
end

p combination_sum([2,3,5], 8)
