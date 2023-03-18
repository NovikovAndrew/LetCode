/*
 Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.

 Note that you must do this in-place without making a copy of the array.

  

 Example 1:

 Input: nums = [0,1,0,3,12]
 Output: [1,3,12,0,0]
 Example 2:

 Input: nums = [0]
 Output: [0]
  

 Constraints:

 1 <= nums.length <= 104
 -231 <= nums[i] <= 231 - 1
  

 Follow up: Could you minimize the total number of operations done?
 */

public func moveZeroes283(_ nums: inout [Int]) {
    var leftPointer = 0
    var rightPointer = 1

    while rightPointer < nums.count {
        if nums[leftPointer] == 0 && nums[rightPointer] != 0 {
            nums[leftPointer] = nums[rightPointer]
            nums[rightPointer] = 0
            leftPointer += 1
        }
        
        if nums[leftPointer] != 0 {
            leftPointer += 1
        }
        
        rightPointer += 1
    }
}

/*
 0 1
 | |
 
 
 
 0 1 0 3 12
 | |
 
 
 1 0 0 3 12
   |   |
 
 
 1 3 0 0 12
     |   |
 
 1 3 12 0 0
        |   |
 
 1 0 1      0 1 0 3 12
 | |        | |
 
 1 1 0      1 0 0 2 12
   | |        |   |
             
 1 1 0      1 2 12 0 0
   | |          |   |
 */
