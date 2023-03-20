/*
 Given an integer array of size n, find all elements that appear more than ⌊ n/3 ⌋ times.

  

 Example 1:

 Input: nums = [3,2,3]
 Output: [3]
 Example 2:

 Input: nums = [1]
 Output: [1]
 Example 3:

 Input: nums = [1,2]
 Output: [1,2]
  

 Constraints:

 1 <= nums.length <= 5 * 104
 -109 <= nums[i] <= 109
  

 Follow up: Could you solve the problem in linear time and in O(1) space?
 */

public func majorityElement229(_ nums: [Int]) -> [Int] {
    var hashTable = [Int:Int]()
    var result = [Int]()
    
    for number in nums {
        if hashTable[number] == nil {
            hashTable[number] = 1
            continue
        }
        
        if let totalCount = hashTable[number] {
            hashTable[number] = totalCount + 1
        }
    }
    
    for (key, value) in hashTable {
        if value > nums.count / 3 {
            result.append(key)
        }
    }
    
    result.sort()
    return result
}

