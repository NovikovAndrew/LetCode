/*
 Given an integer x, return true if x is a palindrome, and false otherwise.

  

 Example 1:

 Input: x = 121
 Output: true
 Explanation: 121 reads as 121 from left to right and from right to left.
 Example 2:

 Input: x = -121
 Output: false
 Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
 Example 3:

 Input: x = 10
 Output: false
 Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
  

 Constraints:

 -231 <= x <= 231 - 1
 */

public func isPalindrome9(_ x: Int) -> Bool {
    let s = String(x)
    let reversedS = String(s.reversed())
    return s == reversedS
}

/*
 By 2 pointer
 
 let s = "\(x)"
 var arr = [String]()
 
 s.forEach { char in
     arr.append(String(char))
 }
 
 var leftPointer = 0
 var rightPointer = arr.count - 1
 var isOk = false
 
 while leftPointer < arr.count / 2 {
     if arr[leftPointer] == arr[rightPointer] {
         leftPointer += 1
         rightPointer -= 1
         isOk = true
     } else {
        return false
     }
 }
 
 retrun isOk
 
 let a = "s" == String("s".reversed())
 */

