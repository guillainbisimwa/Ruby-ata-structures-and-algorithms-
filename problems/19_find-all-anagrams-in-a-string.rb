# @param {String} s
# @param {String} p
# @return {Integer[]}
def find_anagrams(s, pa)
    str = s.split('')
    pattern = pa.split('')

    window_start = 0
    matched = 0

    char_frequency = Hash.new
    anagrams = []

    pattern.each do |chr|
        unless char_frequency.include?(chr)
            char_frequency[chr] = 0 
        end
        char_frequency[chr] += 1
    end

    (0...str.length).each do |window_end|
        right_char = str[window_end]
        if char_frequency.include?(right_char)
            char_frequency[right_char] -= 1
            if char_frequency[right_char] == 0
                matched += 1                
            end
        end

        if matched == char_frequency.length
            anagrams.append(window_start)
        end

        if window_end >= pattern.length - 1
            left_char = str[window_start]
            window_start += 1

            if char_frequency.include?(left_char)
                if char_frequency[left_char] == 0
                    matched -= 1
                end
                char_frequency[left_char] += 1
            end
        end
    end
    anagrams
end

p find_anagrams("cbaebabacd", "abc") # [0, 6]
p find_anagrams("abab", "ab") # [0, 1, 2]
