class Solution(object):
    def threeSum(self, nums):
        """
        :type nums: List[int]
        :rtype: List[List[int]]
        """
        """
        res = [[-1,-1,2],[-1,0,1]]
        [-4, -1, -1, 0, 1, 2]
        1
        tumsum2([], 1, res)
        lo = 4
        hi = 4
        sum = -1 + 0 + 1 = 0  [-1,0,1]
        """

        res = []

        nums.sort()

        for i in range(len(nums)):
            if nums[i] > 0:
                break
            if i == 0 or nums[i - 1] != nums[i]:
                self.twoSum(nums, i, res)

        return res

    def twoSum(self, nums, i, res):
            l, r = i+1, len(nums) - 1

            while l < r:
                sum = nums[i] + nums[l] + nums[r]

                if sum < 0:
                    l += 1
                elif sum > 0:
                    r -= 1
                else:
                    res.append([nums[i], nums[l], nums[r]])
                    l += 1
                    r -= 1    
                    while l < r and nums[l] == nums[l - 1]:
                        l += 1