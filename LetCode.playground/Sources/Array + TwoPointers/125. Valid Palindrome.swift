/*
 A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

 Given a string s, return true if it is a palindrome, or false otherwise.

  

 Example 1:

 Input: s = "A man, a plan, a canal: Panama"
 Output: true
 Explanation: "amanaplanacanalpanama" is a palindrome.
 Example 2:

 Input: s = "race a car"
 Output: false
 Explanation: "raceacar" is not a palindrome.
 Example 3:

 Input: s = " "
 Output: true
 Explanation: s is an empty string "" after removing non-alphanumeric characters.
 Since an empty string reads the same forward and backward, it is a palindrome.
  

 Constraints:

 1 <= s.length <= 2 * 105
 s consists only of printable ASCII characters.
 */

import Foundation

public func isPalindrome125(_ s: String) -> Bool {
    if (!s.isEmpty && s.trimmingCharacters(in: .whitespaces).isEmpty) || (s.count == 1 || s.count == 2) {
        return true
    }
    
    let palidStr = s.lowercased().replacingOccurrences(of:"[^a-z0-9]", with: "", options: .regularExpression)
    var leftPointer = 0
    var rightPointer = palidStr.count - 1
    var sArray = [String]()
    var isCheck = false
    
    palidStr.forEach { sArray.append(String($0)) }
    
    // amanaplanacanalpanama
    while leftPointer < rightPointer {
        if sArray[leftPointer] == sArray[rightPointer] {
            isCheck = true
            leftPointer += 1
            rightPointer -= 1
        } else {
            return false
        }
    }
    
    return isCheck
}

