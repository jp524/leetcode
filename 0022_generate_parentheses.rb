# 22. Generate Parentheses
# Stack
# Backtracking

# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  stack = []
  results = []
  backtracking(0, 0, n, stack, results)
  results
end

def backtracking(n_open, n_close, n, stack, results)
  if n_open == n && n_close == n
    results << stack.join
    return
  end

  if n_open < n
    stack << "("
    backtracking(n_open + 1, n_close, n, stack, results)
    stack.pop
  end

  if n_close < n_open
    stack << ")"
    backtracking(n_open, n_close + 1, n, stack, results)
    stack.pop
  end
end

p generate_parenthesis(3) # ["((()))","(()())","(())()","()(())","()()()"]
p generate_parenthesis(1) # ["()"]
