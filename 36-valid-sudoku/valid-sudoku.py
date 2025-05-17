class Solution(object):
    def isValidSudoku(self, board):
        """
        :type board: List[List[str]]
        :rtype: bool
        """
        N = 9

        row = [set() for _ in range(N)]
        col = [set() for _ in range(N)]
        box = [set() for _ in range(N)]

        for r in range(N):
            for c in range(N):
                val = board[r][c]

                if val == '.':
                    continue
                
                index = (r//3) + c//3 * 3
                if val in row[r] or val in col[c] or val in box[index]:
                    return False
                
                row[r].add(val)
                col[c].add(val)
                box[index].add(val)
        return True


        