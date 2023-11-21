
def contains_duplicate(nums)
    num_cnt = Hash.new(0)
    nums.each {|num|
        num_cnt.keys.include?(num) ? return true : num_cnt[num] += 1
    }
    return false
end

def contains_duplicate1(nums)
    Set.new(nums).length != nums.length
end