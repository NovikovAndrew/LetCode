// MARK: - Two Pointers

example(of: "167. Two Sum II - Input Array Is Sorted") {
    let mock1 = [2,7,11,15]
    print(twoSum167(mock1, 9))
    
    let mock2 = [2,3,4]
    print(twoSum167(mock2, 6))
}

example(of: "283. Move Zeroes") {
    var mock1 = [0,1,0,3,12]
    moveZeroes283(&mock1)
    print(mock1)
    
    var mock2 = [0]
    moveZeroes283(&mock2)
    print(mock2)
    
    
    var mock3 = [0, 1]
    moveZeroes283(&mock3)
    print(mock3)
}

// MARK: - HashTable

example(of: "1. Two Sum") {
    let mock1 = [3, 2, 4]
    print(twoSum1(mock1, 6))
    
    let mock2 = [3,2,3]
    print(twoSum1(mock2, 6))
}

example(of: "169. Majority Element") {
    let moc1 = [3, 2, 3, 3, 4]
    print(majorityElement169(moc1))
    
    let moc2 = [2, 3, 3, 2]
    print(majorityElement169(moc2))
}

example(of: "229. Majority Element II") {
    let moc1 = [3, 2, 3, 5, 1]
    print(majorityElement229(moc1))
    
    let moc2 = [2, 3]
    print(majorityElement229(moc2))
}
