def group_anagrams(strs)
    anagram_hash = Hash.new {|h, k| h[k] = []}

    strs.each {|str|
        sorted_str = str.split("").sort().join("")
        anagram_hash[sorted_str] << str
    }
    anagram_hash.values()
    
end

print group_anagrams(["eat","tea","tan","ate","nat","bat"])