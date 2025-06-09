class Solution(object):
    def nextGreaterElement(self, nums1, nums2):
        """
        :type nums1: List[int]
        :type nums2: List[int]
        :rtype: List[int]
        """
         
        nums1Indx = { n:i for i,n in enumerate(nums1)}
        res = [-1] * len(nums1)

        stack = []

        for i in range(len(nums2)):
            curr = nums2[i]

            while stack and curr > stack[-1]:
                val = stack.pop()
                indx = nums1Indx[val]
                res[indx] = curr


            if curr in nums1Indx:
                stack.append(curr)
        return res