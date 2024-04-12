# @param {String[]} strs
# @return {String}
def encode(strs)
  result = ""
  strs.each do |str|
    result << "#{str.length}##{str}"
  end
  result
end

# @param {String} s
# @return {String[]} 
def decode(s)
  result = []
  i = 0

  while i < s.length
    str_length = s[i].to_i
    if str_length > 0 && s[i + 1] == "#"
      result << s[i + 2, str_length]
    end
    i += 1
  end

  result
end


p decode(encode(["neet","code","love","you"])) # ["neet","code","love","you"]
p decode(encode(["we","say",":","yes"])) # ["we","say",":","yes"]
