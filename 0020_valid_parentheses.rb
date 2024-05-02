# 20. Valid Parentheses
# Stack

# @param {String} s
# @return {Boolean}
def is_valid(s)
  stack = []

  s.each_char do |char|
    if OPENING_PARENTHESES.include?(char)
      stack << char
    else
      PARENTHESES[char] == stack.last ? stack.pop : (return false)
      # `stack.pop` removes the opening parentheses
    end
  end

  stack.empty? # Stack will contain opening parentheses if no matching closing ones exist
end

PARENTHESES = {
  ")" => "(",
  "]" => "[",
  "}" => "{"
}

OPENING_PARENTHESES = PARENTHESES.values

p is_valid("()") # true
p is_valid("()[]{}") # true
p is_valid("{[]}") # true
p is_valid("(]") # false
p is_valid("[") # false
p is_valid("((") # false
