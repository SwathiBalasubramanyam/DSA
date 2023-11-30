# Write a method, compress_str(str), that accepts a string as an arg. The method
# should return a new str where streaks of consecutive characters are
# compressed. For example "aaabbc" is compressed to "3a2bc".

def compress_str(str)

    new_str = ""
    curr_char = str[0]
    curr_char_cnt = 1

    str[1..-1].each_char{|char|
        if char == curr_char
            curr_char_cnt += 1
        else 
            new_str += (curr_char_cnt > 1 ? curr_char_cnt.to_s : '') + curr_char
            curr_char = char
            curr_char_cnt = 1
        end
    }

    new_str += (curr_char_cnt > 1 ? curr_char_cnt.to_s : '') + curr_char
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"