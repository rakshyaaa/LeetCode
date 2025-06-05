class Solution(object):
    def removeDuplicates(self, s):
        """
        :type s: str
        :rtype: str
        """
        """
        abbaca

        bb

        aaca

        aa

        ca

        can we solve this problem using stack????

        """

        stringStack = []  # [c, a]
        for c in s:
           
            if stringStack and c == stringStack[-1]:
                stringStack.pop()
            else:
                 stringStack.append(c)

        return ''.join(stringStack)

        
            