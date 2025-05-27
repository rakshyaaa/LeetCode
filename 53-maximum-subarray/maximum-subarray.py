class Solution(object):
    def maxSubArray(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        
        maxSub = nums[0]

        currSum = 0

        for n in nums:
            if currSum < 0:
                currSum = 0
            
            currSum += n

            if currSum > maxSub:
                maxSub = currSum

        return maxSub