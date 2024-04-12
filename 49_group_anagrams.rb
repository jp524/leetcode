# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  return [strs] if strs.count == 1

  hash = Hash.new { |h, k| h[k] = [] }
  strs.each do |str|
    sorted_str = str.chars.sort.join
    hash[sorted_str] << str
  end

  hash.values
end

p group_anagrams(%w[eat tea tan ate nat bat]) # [["bat"],["nat","tan"],["ate","eat","tea"]]
p group_anagrams(['']) # [""]
p group_anagrams(['a']) # [["a"]]
