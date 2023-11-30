def merge(intervals)
    can_merge = true

    while can_merge
        can_merge = false
        (0...intervals.length-1).each {|idx|
            first_ele = intervals[idx]
            sec_ele = intervals[idx+1]
            if first_ele[0] < 
        }
    end
    intervals
end

# [[1,3],[2,6],[8,10],[15,18]]
print merge([[1,4],[4,5]])