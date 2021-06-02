# @param {Integer} num_courses
# @param {Integer[][]} prerequisites
# @return {Boolean}
def can_finish(num_courses, prerequisites)
    return true if num_courses <= 1
        
    map = Hash.new
    (0...prerequisites.length).each do |i|
        if !map.has_key?(prerequisites[i][0])
            map[prerequisites[i][0]] = []
        end
        map[prerequisites[i][0]] = prerequisites[i][1]
    end

    finished = []
    (0...num_courses).each do |i|
        if !map.has_key?(i)
            finished.push(i)
        end
    end
    while map.length > 0
        ans = find(map, finished)
        bool = ans[0]
        finished = ans[1]
        map = ans[2]
        if !bool
            return false
        end  
    end
    return true
end

def find(map, finished)
    map.each do |key, value|
        # TODO : Fix "include bug"
        if finished == [value]
            finished.push(key)
            map.delete(key)
            return [true, finished, map]
        end
    end
    [false, finished, map]
end


# p can_finish(2, [[1,0]]) # true
# p can_finish(2, [[1,0],[0,1]]) # false
p can_finish(3, [[1,0],[1,2],[0,1]]) # false
# p can_finish(5, [[1,4],[2,4],[3,1],[3,2]]) # true
