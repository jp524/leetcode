# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  forward = ""
  backward = ""
  i = 0
  j = s.length - 1

  until i == s.length
    f_char = s[i].downcase
    f_ascii = f_char.ord
    forward << f_char if f_ascii.between?(97, 122) || f_ascii.between?(48, 57)
    b_char = s[j].downcase
    b_ascii = b_char.ord
    backward << b_char if b_ascii.between?(97, 122) || b_ascii.between?(48, 57)

    i += 1
    j -= 1
  end
  forward == backward
end

p is_palindrome("A man, a plan, a canal: Panama") # true
p is_palindrome("race a car") # false
p is_palindrome(" ") # true
p is_palindrome("a.") # true
p is_palindrome("0P") # false
