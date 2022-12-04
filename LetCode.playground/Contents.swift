example("1.Two sum") {
    print(twoSum([2,7,11,15], 9))
}

example("13.Roman to Integer") {
    print(romanToInt("MCMXCIV"))        
}

example("15.3Sum") {
    print(threeSum([-1,0,1,2,-1,-4]))
}

example("217.Contains Duplicate ") {
    print(containsDuplicate([1,1,1,3,3,4,3,2,4,2]))
}

example("167. Two Sum II - Input Array Is Sorted") {
    print(twoSum167([2,7,11,15], 9))
}

example("283. Move Zeroes") {
    var arr = [0,1,0,3,12]
    moveZeroes(&arr)
    print(arr)
}

example("9. Palindrome Number ") {
    print(isPalindrome9(121))
}

example("26. Remove Duplicates from Sorted Array") {
    var nums = [-1,0,0,0,0,3,3]
    print(removeDuplicates26(&nums))
    print(nums)
}

example("125. Valid Palindrome") {
    print(isPalindrome125("A man, a plan, a canal: Panama"))
}

example("680. Valid Palindrome II") {
    print(validPalindrome680("abca"))
}

example("169. Majority Element") {
    print(majorityElement([2,2,1,1,1,2,2]))
}

example("977. Squares of a Sorted Array ") {
    print(sortedSquares([-4,-1,0,3,10]))
}

example("20. Valid Parentheses ") {
    print(isValid20("()[]{}"))
}

example("11. Container With Most Water") {
    print(maxArea([1,8,6,2,5,4,8,3,7]))
}

example("763. Partition Labels") {
    print(partitionLabels("ababcbacadefegdehijhklij"))
}

example("80. Remove Duplicates from Sorted Array II") {
    var nums = [1,1,1,2,2,3]
    print(removeDuplicates80(&nums))
    print(nums)
}
