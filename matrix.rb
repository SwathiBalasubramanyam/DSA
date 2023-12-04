def update_matrix(mat)
    new_mat = []
    
    (0...mat.length).each{|rowIdx|
        new_row = []
        (0...mat[0].length).each {|colIdx|
            if mat[rowIdx][colIdx] == 0
                new_row << 0
                next
            end

            queue = get_neighbors(rowIdx, colIdx, mat)
            while queue.length
                nrow, ncol = queue.shift
                if mat[nrow][ncol] == 0
                    new_row << [(rowIdx-nrow).abs, (colIdx-ncol).abs].select {|something| something > 0}.min
                    break
                else
                    queue += get_neighbors(nrow, ncol, mat)
                end
            end
    
        }
        new_mat << new_row
    }
    return new_mat
end

def get_neighbors(rowIdx, colIdx, mat)
    valid_pos = []
    [[-1, 0], [0, -1], [1, 0], [0, 1]].each{|neigh|
        row, col = (neigh[0] + rowIdx) , (neigh[1] + colIdx)
        if row < 0 || row >= mat.length || col < 0 || col >= mat[0].length
            next
        end
        valid_pos << [row, col]
    }
    valid_pos
end

p update_matrix([[0,0,0],[0,1,0],[1,1,1]])