# 150. Evaluate Reverse Polish Notation
# Stack

# @param {String[]} tokens
# @return {Integer}
def eval_rpn(tokens)
  stack = []

  tokens.each do |char|
    if OPERATORS.include?(char)
      a = stack.pop
      b = stack.pop
      result = math(b, a, char)
      stack << result
    else
      stack << char.to_i
    end
  end

  stack.last
end

OPERATORS = [ "+", "-", "*", "/"]

def math(a, b, operator)
  case operator
  when "+"
    a + b
  when "-"
    a - b
  when "*"
    a * b
  when "/"
    (a / b.to_f).to_i
  end
end

p eval_rpn(["2","1","+","3","*"]) # 9
p eval_rpn(["4","13","5","/","+"]) # 6
p eval_rpn(["10","6","9","3","+","-11","*","/","*","17","+","5","+"]) # 22
p eval_rpn(["4","-2","/","2","-3","-","-"]) # -7