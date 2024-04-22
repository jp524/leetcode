# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  i = 0
  j = s.length - 1

  while i < j
    while i < j && !alphanumeric?(s[i])
      i += 1
    end

    while j > i && !alphanumeric?(s[j])
      j -= 1
    end
    
    return false if s[i].downcase != s[j].downcase

    i += 1
    j -= 1
  end

  true
end

def alphanumeric?(char)
  ascii = char.ord
  ascii.between?(48, 57) || ascii.between?(65, 90) || ascii.between?(97, 122)
end

p is_palindrome("A man, a plan, a canal: Panama") # true
p is_palindrome("race a car") # false
p is_palindrome(" ") # true
p is_palindrome("a.") # true
p is_palindrome("0P") # false
