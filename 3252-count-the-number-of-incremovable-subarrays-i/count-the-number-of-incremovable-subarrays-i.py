class Solution(object):
    def incremovableSubarrayCount(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
    

        def is_strictly_increasing(arr):
            for i in range(len(arr)-1):
                if arr[i] >= arr[i+1] :
                    return False
            
            return True

        count = 0
        for l in range(len(nums)):
            for r in range(l, len(nums)):
                new_arr = nums[:l] + nums[r+1: ]

                if is_strictly_increasing(new_arr):
                    count += 1
        return count