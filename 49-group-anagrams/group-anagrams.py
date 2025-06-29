class Solution(object):
    def groupAnagrams(self, strs):
        """
        :type strs: List[str]
        :rtype: List[List[str]]
        """
        """
        ["eat","tea","tan","ate","nat","bat"]
        we create a dictionary of characters:
        tuple: ordered immutable collection
        lists: unordered mmutable collection
        {
            (e,a,t) : ["eat", "ate", "tea"]

        }
        """
        anagrams = {}


        for word in strs:
            key = "".join(sorted(word))

            if key not in anagrams:
                anagrams[key] = []
            anagrams[key].append(word)

        return list(anagrams.values())