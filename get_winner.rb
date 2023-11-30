def get_winner(arr, k)

    if k >= arr.length
        return arr.max
    end

    cur_winner = arr[0]
    winner_cnt = 0

    while winner_cnt < k
        opponent = arr[1]
        if cur_winner > opponent
            
        if arr[0] > arr[1]
            win_count[arr[0]] += 1
            grt = arr[0]
            arr = [arr[0]] + arr[2..-1] + [arr[1]]
        else
            win_count[arr[1]] += 1
            grt = arr[1]
            arr = [arr[1]] + arr[2..-1] + [arr[0]]
        end
        if win_count[grt] >= k
            return grt
        end
    end

end

arr = [2,1,3,5,4,6,7]
k = 2
puts get_winner(arr, k)