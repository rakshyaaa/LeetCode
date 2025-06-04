class Solution(object):
    def isValid(self, s):
        """
        :type s: str
        :rtype: bool
        """
        
        """
        we are going to use a stack and hashmap

        stack[]
        """

        stack = []

        hashMapofParentheses = {")":"(","}":"{","]":"["}

        for c in s:

            if c in hashMapofParentheses:
                if stack and stack[-1] == hashMapofParentheses[c]:
                    stack.pop()
                else:
                    return False
                
            else:
                stack.append(c)
            
        return True if not stack else False