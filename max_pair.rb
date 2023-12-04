

def get_max_pair(arr)
    max_sum = 0
    max_pair = nil

    (0...arr.length-1).each{|idx|
        sum = arr[idx] + arr[idx+1]
        if sum > max_sum
            max_sum = sum
            max_pair = [idx, idx+1]
        end
    }
    max_pair
end

max_pair([0, 5, 5, 2])