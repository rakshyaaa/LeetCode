class Solution(object):
    def backspaceCompare(self, s, t):
        """
        :type s: str
        :type t: str
        :rtype: bool
        """
        #[f]
        #[#f]
        def stringCheck(s):
            stack = []
            for c in s:
                if c == '#':
                    if stack:
                        stack.pop()
                else:
                    stack.append(c)

            return stack

        

        sStack, tStack = [],[]

        sStack = stringCheck(s)
        tStack = stringCheck(t)

        return True if ''.join(sStack) == ''.join(tStack) else False 
        
        

