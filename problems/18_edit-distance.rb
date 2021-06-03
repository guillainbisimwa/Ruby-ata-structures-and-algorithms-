# @param {String} word1
# @param {String} word2
# @return {Integer}
def min_distance(word1, word2)
    len_one = word1.length
    len_two = word2.length

    word1 = word1.split('')
    word2 = word2.split('')

    cost = 0

    tot = Array.new(len_one + 1, 0) {Array.new(len_two + 1, 0)}

    (1...len_one + 1).each do |index_one|
        tot[index_one][0] = index_one
    end

    (1...len_two + 1).each do |index_two|
        tot[0][index_two] = index_two
    end

    (1...len_one + 1).each do |index_one|
        (1...len_two + 1).each do |index_two|
            if word1[index_one - 1] == word2[index_two - 1]
                cost = 0
            else
                cost = 1
            end
            tot_one = tot[index_one - 1][index_two] + 1
            tot_two = tot[index_one][index_two - 1] + 1
            tot_three = tot[index_one - 1][index_two - 1] + cost
            tot[index_one][index_two] = [tot_one, tot_two, tot_three].min
        end
    end
    tot[len_one][len_two]
end

p min_distance("kitten", "sitting")
