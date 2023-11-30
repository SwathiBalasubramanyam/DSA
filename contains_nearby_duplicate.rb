
def contains_nearby_duplicate(nums, k)
    window = []
    left = 0
    (1...nums.length).each {|i|
        right = i
        window = nums[left...right]
        if left != right and window.include?(nums[right]) and (left-right).abs <= k
            return true
        elsif window.length > k
            left += 1
        end
    }
    return false
end

print contains_nearby_duplicate([1,2,3,1], 3)