# @param {Integer[]} nums
# @return {Integer[][]}
require 'set'

def three_sum(nums)
    hash_table = []
    index = 0
    nums.sort!
    len = nums.length
    (0...len).each do |index|
        complement = Hash.new
        ((index+1)...len).each  do |position|
            t = -nums[index] - nums[position]
            if (index != 0 && nums[index] == nums[index - 1])
                next
            end
            if complement.value?(t)
                
                if nums.uniq[0].zero? && nums.uniq.length == 1
                    hash_table.push([nums[index], nums[position], -nums[index] - nums[position]].sort)
                    return hash_table
                end
                hash_table.push([nums[index], nums[position], -nums[index] - nums[position]].sort)

                while (nums[position+1] == nums[position] && position + 1 < len)
                    position += 1
                end
            end
            complement[position] = nums[position]
        end
        index += 1
    end
    hash_table
end

# three_sum([-1,0,1,2,-3,-4])
#p three_sum([0,0,0,0])
p three_sum([-2,0,0,2,2])
