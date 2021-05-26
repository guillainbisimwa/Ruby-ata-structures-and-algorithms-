# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    n = s.length
    ans = 0

    hashTable = Hash.new

    i = 0

    (0...n).each do |j|
        i = hashTable[s[j]] > i ? hashTable[s[j]] : i if hashTable.has_key?(s[j])
        
        ans = (j - i + 1) > ans ? (j - i + 1) : ans 
        hashTable[s[j]] = j + 1
    end
    ans
end

p length_of_longest_substring('abcabcbb')