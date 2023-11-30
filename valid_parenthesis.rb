require "byebug"

def is_valid(s)
    close_to_open  = {
        ")" => "(",
        "}" => "{",
        "]" => "["
    }

    bracket_stack = []

    s.each_char {|char|
        if close_to_open.keys().include?(char)
            if bracket_stack[-1] != close_to_open[char]
                return false
            else 
                bracket_stack.pop()
            end

        else
            bracket_stack.push(char)
        end
    }
    debugger
    bracket_stack.length == 0
    
end

print is_valid("()")