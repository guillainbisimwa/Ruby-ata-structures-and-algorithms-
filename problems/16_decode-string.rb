# frozen_string_literal: true

# @param {String} s
# @return {String}
def decode_string(s)
  k = 0
  ans = ''
  stack = []
  s.split('').each do |c|
    if c == '['
      stack.push(k)
      stack.push(ans)
      k = 0
      ans = ''
    elsif c == ']'
      first = stack.pop
      times = ans * stack.pop

      ans = first.concat(times)
    elsif c.to_i.positive? || c == '0'
      k = 10 * k + c.to_i
    else
      ans += c
    end
  end
  ans
end

p decode_string('3[a]2[bc]')
p decode_string('3[a2[c]]')
p decode_string('100[leetcode]')
