var isValid = function(s) {
    openBrackets = ["(", "{", "["]
    parenthesisHash = {
        ")": "(",
        "}": "{",
        "]": "["
    }

    stack = []

    for (let i=0; i<s.length; i++){
        if (openBrackets.includes(s[i])){
            stack.push(s[i])
        } else if (!stack.length){
            return false
        } else if (stack[stack.length-1] !== parenthesisHash[s[i]]){
            return false
        } else {
            stack.pop()
        }
    }
    
    return stack.length === 0
};

console.log(isValid("()"))