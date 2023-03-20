/*
Given an array nums of size n, return the majority element.

The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.

 

Example 1:

Input: nums = [3,2,3]
Output: 3
Example 2:

Input: nums = [2,2,1,1,1,2,2]
Output: 2
 

Constraints:

n == nums.length
1 <= n <= 5 * 104
-109 <= nums[i] <= 109
 

Follow-up: Could you solve the problem in linear time and in O(1) space?
*/

public func majorityElement169(_ nums: [Int]) -> Int {
      var hashTable = [Int: Int]()
      var result = 0
      var max = 0

      for value in nums {
          if hashTable[value] == nil {
              hashTable[value] = 1
          }
          
          if let existedValue = hashTable[value] {
              if existedValue > max {
                  result = value
                  max = existedValue
              }

              hashTable[value] = existedValue + 1
          }
      }

      return result
  }
