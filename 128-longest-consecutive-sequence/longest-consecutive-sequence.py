class Solution(object):
    def longestConsecutive(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        
        long_seq = 0

        seq_set = set(nums)

        for num in seq_set:
            if num - 1 not in seq_set:
                seq_count = 0

                while(num + seq_count) in seq_set:
                    seq_count += 1

                long_seq = max(long_seq, seq_count)

        return long_seq


        
