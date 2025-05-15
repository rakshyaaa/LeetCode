class Solution(object):
    def twoSum(self, nums, target):
        
        hashmap = {}  #this will have value with its index

        for i,num in enumerate(nums):
            diff = target - num
            if diff in hashmap:
                return [hashmap[diff],i]
            hashmap[num] = i
        
        return 
