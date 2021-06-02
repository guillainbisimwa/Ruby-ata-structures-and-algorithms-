# frozen_string_literal: true

# @param {Integer} num_courses
# @param {Integer[][]} prerequisites
# @return {Boolean}
def can_finish(num_courses, prerequisites)
  return true if num_courses <= 1

  map = {}
  (0...prerequisites.length).each do |i|
    map[prerequisites[i][0]] = [] unless map.key?(prerequisites[i][0])
    map[prerequisites[i][0]] = prerequisites[i][1]
  end

  finished = []
  (0...num_courses).each do |i|
    finished.push(i) unless map.key?(i)
  end
  while map.length.positive?
    ans = find(map, finished)
    bool = ans[0]
    finished = ans[1]
    map = ans[2]
    return false unless bool
  end
  true
end

def find(map, finished)
  map.each do |key, value|
    # TODO : Fix "include bug"
    next unless finished == [value]

    finished.push(key)
    map.delete(key)
    return [true, finished, map]
  end
  [false, finished, map]
end

# p can_finish(2, [[1,0]]) # true
# p can_finish(2, [[1,0],[0,1]]) # false
p can_finish(3, [[1, 0], [1, 2], [0, 1]]) # false
# p can_finish(5, [[1,4],[2,4],[3,1],[3,2]]) # true
