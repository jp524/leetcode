# @param {String} s
# @param {Integer} k
# @return {Integer}
def character_replacement(s, k)
  l = 0
  char_hash = Hash.new(0)
  longest_substring = 0

  (0...s.length).each do |r|
    char_hash[s[r]] += 1
    other_char_count = (r - l + 1) - char_hash.values.max

    if other_char_count > k
      char_hash[s[l]] -= 1
      l += 1
    end

    longest_substring = [longest_substring, char_hash.values.sum].max
  end

  longest_substring
end

p character_replacement("ABAB", 2) # 4 "AAAA" or "BBBB"
p character_replacement("AABABBA", 1) # 4 "AAAABBA", "AABBBBA", etc
