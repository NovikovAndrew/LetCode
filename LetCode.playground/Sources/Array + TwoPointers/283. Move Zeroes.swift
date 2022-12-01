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
 */

public func moveZeroes(_ nums: inout [Int]) {
    guard nums.count > 2 else { return }
    var leftPointer = 0
    var rightPointer = leftPointer + 1
    
    while rightPointer < nums.count {
        if nums[leftPointer] != 0 {
            leftPointer += 1
            rightPointer += 1
        } else if nums[rightPointer] == 0 {
            rightPointer += 1
        } else { //left pointer is 0
            let temp = nums[rightPointer]
            nums[leftPointer] = temp
            nums[rightPointer] = 0
        }
    }
}

/*
  0,1,0,3,12 -> Initial
  | |
 
  0,1,0,3,12 -> 1st iteration
  | |
 
  1,0,0,3,12 -> 2st iteration
    | |
 
  1,0,0,3,12 -> 3st iteration
    |   |
 
  1,3,0,0,12 -> 4st iteration
    |   |
 
  1,3,0,0,12 -> 5st iteration
      |   |
 
  1,3,12,0,0 -> 6st iteration
       |   |
 */
