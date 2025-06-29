class Solution(object):
    def isAnagram(self, s, t):
        """
        :type s: str
        :type t: str
        :rtype: bool
        """
        """
        rat
        l
        cat
          r  
        """

        l, r = 0, len(s) - 1

        if len(s) == len(t):
            if(sorted(list(s)) == sorted(list(t))):
                return True
            else:
                return False
        
        else:
            return False