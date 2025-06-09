class Solution(object):
    def nextGreaterElement(self, nums1, nums2):
        """
        :type nums1: List[int]
        :type nums2: List[int]
        :rtype: List[int]
        """
        """
        [4:0, 1:1, 2:2]    #lookup
        
        res = [-1, 3, -1]

        stack = [4, 2]   #lookup
        nums2 = [1,3,4,2]

        """
        nums1Indx = {n:i for i, n in enumerate(nums1)}

        output = [-1] * len(nums1)

        stack = []

        for i in range(len(nums2)):
            curr = nums2[i]

            while stack and curr > stack[-1]:
                val = stack.pop()
                indx = nums1Indx[val]
                output[indx] = curr

            if curr in nums1Indx:
                stack.append(curr)

        return output