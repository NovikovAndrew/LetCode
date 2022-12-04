/*
 Given a string s, return true if the s can be palindrome after deleting at most one character from it.

  

 Example 1:

 Input: s = "aba"
 Output: true
 Example 2:

 Input: s = "abca"
 Output: true
 Explanation: You could delete the character 'c'.
 Example 3:

 Input: s = "abc"
 Output: false
  

 Constraints:

 1 <= s.length <= 105
 s consists of lowercase English letters.
 */

public func validPalindrome680(_ s: String) -> Bool {
    var leftPointer = 0
    var rightPointer = s.count - 1
    var sArray = [String]()
    s.forEach { sArray.append(String($0)) }
    var charEq = ""
    // eedede
    // deeeee
    while leftPointer < rightPointer {
        if sArray[leftPointer] != sArray[rightPointer] {
            
        }
        
        leftPointer += 1
        rightPointer -= 1
    }
    
    return true
}
