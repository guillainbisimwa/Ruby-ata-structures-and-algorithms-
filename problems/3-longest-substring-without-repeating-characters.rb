# frozen_string_literal: true

# @param {String} string
# @return {Integer}
def length_of_longest_substring(string)
  len = string.length
  ans = 0

  hash_table = {}

  i = 0

  (0...len).each do |j|
    i = hash_table[string[j]] > i ? hash_table[string[j]] : i if hash_table.key?(string[j])

    ans = (j - i + 1) > ans ? (j - i + 1) : ans
    hash_table[string[j]] = j + 1
  end
  ans
end

p length_of_longest_substring('abcabcbb')
