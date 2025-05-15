class Solution(object):
    def twoSum(self, numbers, target):
        """
        :type numbers: List[int]
        :type target: int
        :rtype: List[int]
        """
        
        hashmap = {}

        for i, n in enumerate(numbers):

            diff = target - n

            if diff in hashmap:
                return [hashmap[diff], i+ 1]

            else:
                hashmap[n] = i + 1

        return None