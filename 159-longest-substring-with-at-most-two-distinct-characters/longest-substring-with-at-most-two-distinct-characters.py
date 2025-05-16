class Solution(object):
    def lengthOfLongestSubstringTwoDistinct(self, s):
        """
        :type s: str
        :rtype: int
        """

        l = 0
        length = 0

        char_hashmap = defaultdict(int)

        for r in range(len(s)):
            char_hashmap[s[r]] += 1
        
            while len(char_hashmap) > 2:
                char_hashmap[s[l]] -= 1

                if char_hashmap[s[l]] == 0:
                    del char_hashmap[s[l]]

                l += 1

            length = max(length, r-l+1)

        return length                
