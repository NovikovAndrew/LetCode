/*
 Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

 An input string is valid if:

 Open brackets must be closed by the same type of brackets.
 Open brackets must be closed in the correct order.
 Every close bracket has a corresponding open bracket of the same type.
  

 Example 1:

 Input: s = "()"
 Output: true
 Example 2:

 Input: s = "()[]{}"
 Output: true
 Example 3:

 Input: s = "(]"
 Output: false
  

 Constraints:

 1 <= s.length <= 104
 s consists of parentheses only '()[]{}'.
 */

public func isValid20(_ s: String) -> Bool {
    var stack: [String] = []
    let dict = ["(": ")",
                "[":"]",
                "{": "}"]
    
    for char in s {
        let char = String(char)
        if let _ = dict[char] {
            stack.append(char)
        } else {
            if let popped = stack.popLast(), char == dict[popped] {
                continue
            } else {
                return false
            }
        }
    }
    
    return stack.isEmpty
}

