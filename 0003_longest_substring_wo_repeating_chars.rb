# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  l = 0
  window = Set.new
  longest = 0
  
  (0...s.length).each do |r|
    while window.include?(s[r])
      # Reduce the window
      window.delete(s[l]) 
      l += 1
    end

    window.add(s[r])
    longest = [longest, window.size].max
  end
  
  longest
end

p length_of_longest_substring("abcabcbb") # 3 "abc"
p length_of_longest_substring("bbbbb") # 1 "b"
p length_of_longest_substring("pwwkew") # 3 "wke"
p length_of_longest_substring("aab") # 2 "ab"
p length_of_longest_substring("dvdf") # 3 "vdf"
p length_of_longest_substring("anviaj") # 5 "nviaj"
