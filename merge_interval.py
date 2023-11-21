

def merge(intervals):
    new_arr = []
    merged = False

    while not merged:
        merged = True

        for idx in range(len(intervals)):

            firstEle = intervals[idx]
            if idx == len(intervals) -1:
                # that is the last element so just add it to array
                new_arr.append(firstEle)
                continue
            

            secEle = intervals[idx+1]
            if secEle[0] <= firstEle[1]:
                new_arr.append([firstEle[0], secEle[1]])
                new_arr += intervals[idx+2:]
                merged = False
                intervals = new_arr
                break
            else :
                new_arr.append(firstEle)
    
    print(new_arr)

merge([[1,3],[2, 6], [8,10],[15,18]])