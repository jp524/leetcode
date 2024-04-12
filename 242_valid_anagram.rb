# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  return true if s.chars.sort.join == t.chars.sort.join

  false
end

p is_anagram("anagram", "nagaram") # true
p is_anagram("rat", "car") # false