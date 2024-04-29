# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  l = 0
  r = 0
  window = Hash.new(0)
  longest = 0
  
  while l <= r && r < s.length
    r_char = s[r]

    if window[r_char] != 0
      window[s[l]] -=1
      l -= 1
    end
    window[r_char] += 1
    r += 1
    longest = [longest, window.values.count].max
  end
  
  longest
end

p length_of_longest_substring("abcabcbb") # 3 "abc"
p length_of_longest_substring("bbbbb") # 1 "b"
p length_of_longest_substring("pwwkew") # 3 "wke" # this returns 4
p length_of_longest_substring("aab") # 2 "ab"
p length_of_longest_substring("dvdf") # 3 "vdf"
p length_of_longest_substring("anviaj") # 5 "nviaj"
