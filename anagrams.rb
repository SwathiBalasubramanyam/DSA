require "byebug"

def is_anagram(s, t)
    # s.split("").sort() == t.split("").sort()


    s_cnt = Hash.new(0)
    
    s.each_char {|char|
        s_cnt[char] += 1
    }

    t.each_char {|char|
        if !s_cnt.keys.include?(char) || s_cnt[char] == 0
            return false
        end

        s_cnt[char] -= 1
    }

    s_cnt.values.none? {|val| val != 0}

    # return false unless s.length == t.length

    # ('a'..'z').each { |c| return false if s.count(c) != t.count(c) }

    # true
end

s = "anagram"
t = "nagaram"

print is_anagram(s, t)